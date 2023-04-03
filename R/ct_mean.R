#' Computes the arithmetic mean of the values of a vector.
#'
#' @param x A numeric vector.
#' @returns A number - the mean of the numbers in x.
#' @examples
#' ct_mean(c(10,50,12,43))

ct_mean=function(x)
{
  sum(x)/length(x)
}
