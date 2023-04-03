#' Computes the median value of the values of a vector.
#'
#' @param x A numeric vector.
#' @returns A number.
#' First sorts the vector's values in ascending order. Then,
#' if the length of the vector (=n) is divisible by 2, then the median will be
#' computed as the mean(X_n/2, X_n/2+1). Otherwise,
#' if the length of the vector (=n) is NOT div by 2, then the median will be
#' computed as X_{n/2+1}=X_as.integer(n/2+1).
#' @examples
#' ct_median(c(10,50,12,43))
#' #note that length(c(10,50,12,43)) is 4 and thus, divisible by 2
#'
#' ct_median(c(10,50,12,43, 10))
#' #note that length(c(10,50,12,43, 10)) is 5 and thus, not divisible by 2

ct_median=function(x)
{
  #Step 1: Order ascendingly x:
  x=sort(x)
  n=length(x)	#sample size

  #Step 2: We check if N div with 2 or not
  #Step 3: ##if N div by 2 -> median= mean(X_n/2, X_n/2+1)
          ##if N is NOT div by 2 -> median=X_{n/2+1}=X[as.integer(n/2+1)]=X[trunc(n/2+1)]
  if (n%%2!=0)		#if n is not div by 2
  {
    medianValue=x[as.integer(n/2+1)]
  } else {			#if n is div by 2
    medianValue=mean(x[n/2],x[n/2+1])
  }
  medianValue
}
