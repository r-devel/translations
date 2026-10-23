# Fetch information about all components in Weblate and save it to a CSV file.
# No token is needed: this only reads public data from the Weblate API.
# Uses packages httr, purrr, tibble, jsonlite

# Get the raw API response: a list with one element per component
fetch_weblate_components_raw <- function() {
  # we have only 50 components, so we don't need to deal with pagination
  complete_url <- "https://translate.rx.studio/api/components/?page_size=1000"

  # request the API
  resp <- httr::GET(complete_url)

  # stop with an error if the request failed (e.g. Weblate is down)
  httr::stop_for_status(resp)

  # get content as a list
  resp |>
    httr::content() |>
    purrr::pluck("results")
}

# Transform the raw list into a tibble, keeping only the fields we need
tidy_weblate_components <- function(list_components) {
  # The API returns many more fields per component than the ones we keep below.
  # To keep another field, add it to the tibble() call below.
  list_components |>
    purrr::map(\(x) {
      tibble::tibble(
        project = x$project$slug,
        component = x$slug,
        name = x$name,
        web_url = x$web_url,
        report_source_bugs = x$report_source_bugs %||% "",
        fetch_repo = x$repo,
        linked = !is.null(x$linked_component),
        file_mask = x$filemask,
        merge_style = x$merge_style,
        locked = x$locked
      )
    }) |>
    purrr::list_rbind()
}

# Write the content in a CSV -------------------------------------------------

# Fetching the JSON from weblate with information about the components
list_components <- fetch_weblate_components_raw()

# Transforming into a tidy tibble (only columns that we selected)
df_components <- tidy_weblate_components(list_components)

# Saving as a CSV
dir.create("scripts/output", showWarnings = FALSE)

write.csv(
  df_components,
  "scripts/output/weblate_components.csv",
  row.names = FALSE
)

# # Optional: save the complete JSON ---
# # (don't commit this file, it is around 10k lines)

jsonlite::write_json(
  list_components,
  "scripts/output/weblate_components_complete.json",
  auto_unbox = TRUE,
  pretty = TRUE,
  null = "null"
)
