#' Fitting Generalized Linear Models for only presences data
#'
#' @param presences matrix of environmental values for presences records
#' @param background  matrix of environmental values for background records
#' @param w_presences a numeric value to weight presence records
#' @param w_backg a numeric value to weight background records
#'
#' @return fitGLM returns an object of class inheriting from "glm" which inherits from the class "lm".
#' @export
#'
#' @importFrom stats binomial glm
#'
#' @examples
#' ### Loading data
#' data("records", package = "betterKUenm")
#' envar <- terra::rast(system.file("extdata", "variables.tif", package = "betterKUenm"))
#' M <- terra::vect(system.file("extdata", "M.gpkg", package = "betterKUenm"))
#'
#' ## Step 1: Get env information of the presences and background data
#' occ_data <- occ_prep(data = records, lon = "longitude", lat = "latitude", variables = envar)
#' bcg_data <- ext_back(variables = envar, M = M, n = 1000)
#'
#' ## Step 2: Call GLM
#' glm_model <- fitGLM(presences = occ_data, background = bcg_data)
#' summary(glm_model)

fitGLM <- function(presences, background, w_presences = 1, w_backg = 1000){


  p <- cbind(occ = 1, presences)
  b <- cbind(occ = 0, background)

  data <- rbind(p,b)

  # weights: 1 - presence | 1000 - Background
  vweights <- ifelse(data$occ == 1, w_presences, w_backg)

  # fit glm
  res <- stats::glm(
    formula = occ ~ .,
    data = data,
    family = stats::binomial(link = "logit"),
    weights = vweights
  )

  return(res)
}

