#' Fitting Generalized Linear Models for only presences data
#'
#' @param presences matrix of environmental values for presences records
#' @param background  matrix of environmental values for background records
#' @param w_presences a numeric value to weight presence records
#' @param w_backg a numeric value to weight background records
#'
#' @return fitGLM returns an object of class inheriting from "glm" which inherits from the class "lm".
#' @export

fitGLM <- function(presences, background, w_presences = 1, w_backg = 1000){


  p <- cbind(occ = 1, presences)
  b <- cbind(occ = 0, background)

  data <- rbind(p,b)

  # weights: 1 - presence | 1000 - Background
  vweights <- ifelse(data$occ == 1, w_presences, w_backg)

  # fit glm
  res <- glm(
    formula = occ ~ .,
    data = data,
    family = binomial(link = "logit"),
    weights = vweights
  )

  return(res)
}

