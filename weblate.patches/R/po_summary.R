po_files <- \() list.files(pattern = "\\.po$", recursive = TRUE)

#' pocount is available from e.g. 'apt install translate-toolkit'
#' @importFrom data.table fread setnames
po_counts <- function(branch) {
  if (Sys.which("pocount") == "") {
    stop("Install pocount to proceed, e.g. 'apt install translate-toolkit'")
  }

  old_branch <- checkout_branch(branch)
  on.exit(checkout_branch(old_branch))

  po_files <- po_files()

  po_csv <- tempfile()
  on.exit(unlink(po_csv), add = TRUE)
  system2("pocount", c("--csv", po_files), stdout = po_csv)
  x <- fread(po_csv, sep = ",", fill = TRUE)
  setnames(x,
    c("Filename", "Translated Messages"),
    c("filename", "n_translated")
  )
  x
}

#' @importFrom data.table := .BY setDT setkeyv setnames tstrsplit
#' @importFrom tools checkPoFiles
#' @export
po_update_summary <- function() {
  remotes <- system2("git", c("remote", "-v"), stdout = TRUE) |>
    tstrsplit("\\s+") |>
    setDT() |>
    setnames(c("name", "uri", "type"))
  if (!all(c("patched", "canonical") %in% remotes$name)) {
    stop(
      "Expected a local repo set up with setup_local_clone(), ",
      "which has branches 'patched' and 'canonical', but found branches: ",
      toString(remotes)
    )
  }

  remotes = unique(remotes, by = "name") # drop (fetch)/(push) distinction
  setkeyv(remotes, "name")
  remotes[, by = name, default_branch := default_branch(uri)]

  remotes["patched", checkout_branch(file.path(name, default_branch))]
  po_report <- checkPoFiles("")
  if (nrow(po_report)) {
    print(po_report)
    stop(sprintf(
      "Fix the above %d issues identified by checkPoFiles() to proceed.",
      nrow(po_report)
    ))
  }

  patched_summary <-
    remotes["patched", po_counts(file.path(name, default_branch))]
  canonical_summary <-
    remotes["canonical", po_counts(file.path(name, default_branch))]
  checkout_branch("master")

  # <<< REACHED HERE >>>

  # SUMMARIZE the changed translations, and delete empty .po files
  po_summary <- merge(patched_summary, canonical_summary, by = "filename", all = TRUE, suffixes = c("_weblate", "_svn"))
  po_summary[, package := basename(dirname(dirname(filename)))]
  # Drop empty & record files
  po_summary[n_translated_weblate == 0 & is.na(n_translated_svn), { # NB: keep empty files if they're already in SVN, hence is.na() check
    log_info('Dropping {.N} empty files:')
    .SD[, by = package, {
        log_level(INFO, 'From package {blue(.BY$package)}:')
        log_level(INFO, '  {toString(green(basename(filename)))}', .topenv = .SD) # NB: Need .SD since data.table doesn't pick up the variable from the string
    }]
    unlink(filename)
    NULL
  }]
  po_summary <- po_summary[n_translated_weblate > 0]

  # (optional) Summarize the update for the rest of the files
  setnafill(po_summary, fill = 0L, cols = which(sapply(po_summary, is.numeric)))
  po_summary[, n_newly_translated := n_translated_weblate - n_translated_svn]
  po_summary[n_newly_translated > 0, {
    log_info('New translations in {.N} files')
    .SD[, by = package, {
      log_level(INFO, 'From package {blue(.BY$package)}:')
      log_level(INFO, '  {sprintf("%s [+%s]", green(format(basename(filename))), red(format(n_newly_translated)))}', .topenv = .SD)
    }]
    NULL
  }]

  # REPLACE 'Report-Msgid-Bugs-To' metadata field pointing to #core-translation-po-bugs
  system2("sed", c("-i", "'s/sourcestringbugs.o40l9j@zapiermail.com/bugs.r-project.org/'", po_summary$filename))

  # CHECK msgfmt works -- 'make update*' commands run by R-core check this as well
  tmp <- tempfile()
  ## NB: lapply() over for() to show all failures at once
  res <- suppressWarnings(lapply(
    po_summary$filename,
    \(po_file) system2("msgfmt", c("-c", "--statistics", "-o", tmp, po_file), stdout=TRUE, stderr=TRUE)
  ))
  failed <- which(!sapply(res, \(r) is.null(attr(r, "status"))))
  if (length(failed)) {
    cat("'msgfmt' failed for some .po files:\n")
    for (idx in failed) {
      cat(sprintf("  %s:\n", red(po_summary$filename[idx])))
      writeLines(paste0("    ", res[[idx]]))
    }
  }
}
