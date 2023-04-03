#' Computes the median value for each column in a matrix or a data frame.
#'
#' @param x A matrix or a data frame.
#' @returns An n x 1 matrix with the median value for each column in x.
#' The rownames are the colnames of x.
#' For each column, the function first sorts the values in ascending order. Then,
#' if the length of the column (=n) is divisible by 2, then the median will be
#' computed as the mean(C_n/2, C_n/2+1). Otherwise,
#' if the length of the column (=n) is NOT div by 2, then the median will be
#' computed as C_{n/2+1}=C_as.integer(n/2+1).
#' @examples
#' dataTest1=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
#' #note that length(dataTest1[,1]) is 4 and thus divisible by 2
#' colnames(dataTest1)=c("Variable 1", "Variable 2", "Variable 3")
#' ct_medianCol(dataTest1)
#'
#' dataTest2=cbind(c(10,50,12,43,10), c(100, 101, 102, 103, 103), c(1, 1, 5,4, 7))
#' #note that length(dataTest2[,1]) is 5 and thus NOT divisible by 2
#' colnames(dataTest2)=c("Variable 1", "Variable 2", "Variable 3")
#' ct_medianCol(dataTest2)




ct_medianCol=function(x)
{
  medianValues=matrix(NA, nrow=ncol(x), ncol=1) #a matrix full of "NA", with ncol(x) rows and 1 column
  rownames(medianValues)=colnames(x)				#variable names are stored as rownames
  colnames(medianValues)=c("Median")							#the name of the column is "Median"

  for (i in 1:ncol(x))							#i takes values from 1 to number of columns of <<x>>
  {
    x[,i]=sort(x[,i])					#order ascendingly the values of column i
    n=length(x[,i])							#sample size
    if (n%%2!=0)										#if n is not div by 2
    {
      medianValue=x[as.integer(n/2+1),i]
    } else {											#if n is div by 2
      medianValue=(x[n/2,i]+x[n/2+1,i])/2
    }
    medianValues[i]=medianValue							#we store in row i, column 1 of matrix medianValues the current value of medianValue
  }
  medianValues
}
