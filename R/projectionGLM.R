#' Project GLMs to Raster Variables
#'
#' @param model GLM results with weights
#' @param new_data A SpatRaster file
#'
#' @return Projected raster
#' @importFrom terra predict
#' @export
#'
#' @examples
#' # Loading data
#' data("glm_model", package = "betterKUenm")
#'
#' variables <- terra::vect(system.file("extdata", "variables.tif", package = "betterKUenm"))
#' # Run the function
#' proj <- projectionGLM(model = glm_model, new_data = variables)

projectionGLM <- function(model, new_data) {
  x <- terra::predict(new_data, model)

  #return raster
  return(x)
}
