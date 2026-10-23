# Update the "Source string bug reporting address" (report_source_bugs) of
# Weblate components using the Weblate API.
#
# This needs a Weblate API token. Copy your token from
# https://translate.rx.studio/accounts/profile/#api and save it as
# WEBLATE_TOKEN in your .Renviron file (e.g. with usethis::edit_r_environ()),
# then restart R.
#
# Run from the root of the repository.
# Uses packages httr, purrr, dplyr, tibble

# new email address: IMPORTANT!!
new_report_source_bugs_email <- "...."

# stop if the new address doesn't look like an email (x@y.z, with no spaces)
if (!grepl("^\\S+@\\S+\\.\\S+$", new_report_source_bugs_email)) {
  stop("new_report_source_bugs_email is not a valid email address.")
}

# Checking if the Weblate Token is set:
if (Sys.getenv("WEBLATE_TOKEN") == "") {
  stop(
    "WEBLATE_TOKEN is not set."
  )
}

# Get the current list of components (also refreshes the files in scripts/output/)
source("scripts/fetch-weblate-components.R")

# Checking if source() ran with no problems and we have df_components
tibble::glimpse(df_components)

# update email for report source bugs ---------------------

# Set the report_source_bugs address of one component.
# `project` and `component` are the slugs used in the Weblate URLs
# (the `project` and `component` columns of df_components).
update_report_source_bugs_email <- function(project, component, new_email) {
  # API endpoint for this component, e.g.
  # https://translate.rx.studio/api/components/r-project/base-r-gui/
  url <- paste0(
    "https://translate.rx.studio/api/components/",
    project,
    "/",
    component,
    "/"
  )

  # PATCH changes only the fields sent in the body; all other settings of the
  # component stay the same. The token is needed to authenticate.
  resp <- httr::PATCH(
    url,
    httr::add_headers(
      Authorization = paste("Token", Sys.getenv("WEBLATE_TOKEN"))
    ),
    body = list(report_source_bugs = new_email),
    encode = "json"
  )

  # stop with an error if the update failed (e.g. invalid token or no
  # permission), so we don't continue silently
  httr::stop_for_status(resp)

  # print progress, one line per updated component
  message(project, "/", component, ": ok")
}

# filter the components to update.
# Important: check if we need to update this filter.
components_to_update <- df_components |>
  dplyr::filter(
    project %in% c("r-project", "the-r-project-recommended-packages")
  )

# check components_to_update before running the next step:
# it changes the components in Weblate!
components_to_update |>
  # select the columns we need for update_report_source_bugs_email()
  dplyr::select(project, component) |>
  # apply function update_report_source_bugs_email() for all the components filtered
  purrr::pwalk(
    .f = update_report_source_bugs_email,
    new_email = new_report_source_bugs_email
  )

# check: the updated components should now have the new address -----

# fetch the components again, after the update
df_components_updated <- fetch_weblate_components_raw() |>
  tidy_weblate_components() |>
  dplyr::select(project, component, report_source_bugs)

# inspect the result
View(df_components_updated)

# keep only the components we tried to update and that still don't have the
# new address: this should return 0 rows
df_components_updated |>
  dplyr::semi_join(components_to_update, by = c("project", "component")) |>
  dplyr::filter(report_source_bugs != new_report_source_bugs_email)
