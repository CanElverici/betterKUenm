#' Title Extract variables in coordinates
#'
#' @param data a matrix with at least 2 columns containing longitude and latitude data
#' @param lon longitude
#' @param lat latitude
#' @param variables SpatRaster with values to be extracted for the coordinates
#'
#' @return matrix
#' @export
#' @importFrom terra extract
#' @examples
#' #load the data
#' data("records", package = "betterKUenm")
#' vars <- terra::rast(system.file("extdata", "variables.tif",
#'                                 package = "betterKUenm"))
#'
#' #Implement the function
#' anything <- occ_prep(data=records,lon ="longitude",lat = "latitude", variables = vars)


occ_prep <- function(data, lon, lat, variables) {

  terra::extract(variables, as.matrix(data[, c(lon,lat)]))

}
