#' Finds the mode value(s) of a numeric vector.
#'
#' @param x A numeric vector.
#' @returns A numeric vector - the mode value(s) of the numbers in x.
#' @examples
#' ct_mode(c(10,10,12,43))
#' ct_mode(c(10,43, 10,12,43))


ct_mode=function(x)
{
  absFreq=as.data.frame(table(x))
  modeValue=as.numeric(as.character(absFreq[absFreq[,2]==max(absFreq[,2]),1]))
  #max(absFreq[,2])--I search for the maximum value in the second column (the column with frequencies)
  #the mode will be the element in column 1, on the row that has the maximum value on column 2
  modeValue
}
