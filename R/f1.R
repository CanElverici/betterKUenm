#' This is the f1 function
#'
#' @param text (character) the text to paste with f1. Default = "default"
#'
#' @return character vector of length 1
#' @export
#'
#' @examples
#' f <- f1(text = "default")
f1 <- function(text = "default") {
  return(paste(text, "F1"))
}
