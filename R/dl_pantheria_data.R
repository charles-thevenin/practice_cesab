#' Download wildfinder files from the github repo
#'
#' @param filename A string of character with the name of the file to download
#' It will be used as the filename in the repo
#' 
#' @return
#' 
#' @examples
#' dl_pantheria_data("wildfinder-mammals_list.csv")
#' dl_pantheria_data("wildfinder-ecoregions_list.csv")
#' dl_pantheria_data("wildfinder-ecoregions_species.csv")

dl_pantheria_data <- function(filename = "wildfinder-mammals_list.csv"){
  ## Destination path ---- 
path <- here::here("data", "wildfinder")

## Create destination directory ----
dir.create(path, showWarnings = FALSE, recursive = TRUE)

## GitHub base URL ----
base_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/"

## Build full URL ----
full_url <- paste0(base_url, filename)

## Build full path ----
dest_file <- file.path(path, filename)

## Download file ----
utils::download.file(url = full_url, destfile = dest_file, mode = "wb")
}
