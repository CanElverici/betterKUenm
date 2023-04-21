#' Project GLMs to Raster Variables
#'
#' @param model GLM results with weights
#' @param new_data A SpatRaster file
#'
#' @return Projected raster
#' @importFrom terra predict
#' @export

projectionGLM <- function(model, new_data) {
  x <- terra::predict(new_data, model)

  #return raster
  return(x)
}
