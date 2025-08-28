#' Calculate Gini Index
#'
#' Calculates the Gini index for a given numeric vector.
#'
#' @param vec A numeric vector
#' @return The Gini index value
#' @export
#' @examples
#' vec <- c(1, 2, 3, 4, 5)
#' gini_index(vec)
gini_index <- function(vec) {
  if (!is.numeric(vec) || length(vec) == 0) {
    stop("Input must be a non-empty numeric vector")
  }
  
  dif_abs <- 0
  n <- length(vec)
  
  for (i in 1:n) {
    for (j in 1:n) {
      dif_abs <- dif_abs + abs(vec[i] - vec[j])
    }
  }
  
  # Fixed the denominator - using mean of vec instead of undefined variable
  return(dif_abs / (2 * n * sum(vec)))
}