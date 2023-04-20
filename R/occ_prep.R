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

occ_prep <- function(data, lon, lat, variables) {

  terra::extract(variables, as.matrix(data[, c(lon,lat)]))

}
