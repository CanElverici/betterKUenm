#' Extract background data from variables
#'
#' @description ext_back mask the environmental variables and extract the values of n cells at random
#'
#' @param variables (SpatRaster) SpatRaster with layers to be used in the model
#' @param M (Optional SpatVector) #Polygon delimiting the calibration area
#' @param n (numeric) #Number of pixels to extract
#'
#' @return
#' A dataframe containing the values extracted from variables
#' @export
#' @importFrom terra crop as.data.frame
#' @examples
#' # load data
#' data("records", package = "betterKUenm")
#' M <- terra::vect(system.file("extdata", "M.gpkg", package = "betterKUenm"))
#' vars <- terra::rast(system.file("extdata", "variables.tif",
#'                                 package = "betterKUenm"))
#'
#' # run function
#' back <- ext_back(variables = vars,
#'                  M = M,
#'                  n = 1000)


ext_back <- function(variables, M = NULL, n) {
  #If the user specify a calibration area
  if(!is.null(M)) {
    m.var <- terra::crop(variables, M, mask = TRUE)
    df.var <- terra::as.data.frame(m.var)
    df.var <- df.var[sample(nrow(df.var), n), ] }
  #If the user does not specify a calibration area
  if(is.null(M)) {
    df.var <- terra::as.data.frame(variables)
    df.var <- df.var[sample(nrow(df.var), n), ] }
  return(df.var)
}

