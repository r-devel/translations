#' @importFrom logger log_info
#' @export
setup_local_clone <- function(
  canonical = repos[["r_devel_git"]],
  patched = repos[["weblate_base"]],
  outdir = NULL
) {
  if (is.null(outdir)) {
    outdir <- tempfile()
    log_info("Setting up a local repo at {outdir}...")
  }
  dir.create(outdir, recursive = TRUE, showWarnings = FALSE)
  setwd(outdir)

  system2("git", c("clone", "-o", "patched", patched, "."))
  system2("git", c("remote", "add", "canonical", canonical))

  patched_default_branch <- default_branch(patched)
  canonical_default_branch <- default_branch(canonical)

  system2("git", c("fetch", "canonical", canonical_default_branch))
  system2("git", c("fetch", "patched", patched_default_branch))

  system2("git",
    c("reset", "--hard", file.path("patched", patched_default_branch))
  )
}

default_branch <- function(git_repo) {
  remote_show <- system2("git", c("remote", "show", git_repo), stdout = TRUE)
  remote_head <- grep("HEAD", remote_show, value = TRUE)
  gsub(".*:\\s*", "", remote_head)
}

current_branch <-
  \() system2("git", c("rev-parse", "--abrev-ref", "HEAD"), stdout = TRUE)
checkout_branch <- function(branch) {
  old_branch <- current_branch()
  system2("git", c("checkout", branch))
  old_branch
}
