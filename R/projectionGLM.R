#' Project GLMs to Raster Variables
#'
#' @param model GLM results with weights
#' @param new_data A SpatRaster file
#'
#' @return Projected raster
#' @export
#'
#' @examples
#' model <- glm(formula=pa~., data = v)
#' new_data <- terra::rast("./ex/raster.tif")
#' projectionGLM(model, new_data)
projectionGLM <- function(model, new_data) {
  x <- terra::predict(new_data, model)

  #return raster
  return(x)
}
