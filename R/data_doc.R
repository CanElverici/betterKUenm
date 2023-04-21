#' Example of occurrence records for one species
#'
#'
#'
#' @format data.frame:
#' \describe{
#'   \item{species}{species name, a code in this example}
#'   \item{longitude}{longitude, longitude value}
#'   \item{latitude}{latitude, latitude value}
#' }
#'
#' @examples
#' data("records", package = "betterKUenm")
#'
#' str(records)
"records"



#' Example of accessible areas for a species
#'
#' A SpatVector object representing the accessible area for a species.
#'
#' @format A SpatVector object.
#'
#' @name M
#'
#' @return No return value, used with function \code{\link[terra]{vect}} to
#' bring an example of an accessible area for a species.
#'
#' @examples
#' M <- terra::vect(system.file("extdata", "M.gpkg", package = "betterKUenm"))
#'
#' terra::plot(M)
NULL


#' Example of environmental variables used in analysis
#'
#' A SpatRaster object representing the variable temperature.
#'
#' @format A SpatRaster object.
#'
#' @name variables
#'
#' @return No return value, used with function \code{\link[terra]{rast}} to
#' bring an example of an environmental variable used in analysis.
#'
#' @examples
#' variables <- terra::rast(system.file("extdata", "variables.tif", package = "betterKUenm"))
#'
#' terra::plot(variables)
NULL
