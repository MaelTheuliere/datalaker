#' Reading A Dataframe From The datalake API
#'
#' @description This function read directly into R a specific datafile by the mean of its unique ID and millesime.
#'
#' @param datafileid the unique identifier of the individual dataframe to read into R.
#' @param millesime the millesime of the datafile. Default is the last one
#'
#' @return a dataframe
#'
#' @examples \dontrun{
#' fishing(datafileid = "6d031ea5-d1e0-4bd6-82de-1bc3e14acdf2", millesime = "2019-06")}
#' @export
#' @importFrom magrittr %>%
#' @importFrom dplyr as_tibble
#' @importFrom httr GET
#' @importFrom httr add_headers
#' @importFrom jsonlite fromJSON
#' @importFrom httr content


fishing <- function(datafileid, millesime=NULL) {


  basic_url <- "https://www.pub.datalake.oshimae.rie.gouv.fr:443/api/v1/datafiles/"
  if (!is.null(millesime)) {
    final_url <- paste(basic_url, datafileid, "/json?millesime=",millesime,sep = "")
  }
  else {
    final_url <- paste(basic_url, datafileid, "/json",sep = "")
  }
  miaou <- GET(final_url,
               add_headers(Accept = "text/json",charset="utf-8")
               )
  ronron <- content(miaou, "text")

  woufwouf <- fromJSON(ronron) %>% as_tibble()
  return(woufwouf)
}
