#' Computes the (arithmetic) mean value for each column in a matrix or a data frame.
#'
#' @param x A matrix or a data frame.
#' @returns An n x 1 matrix with the mean value for each column in x.
#' The rownames are the colnames of x.
#' @examples
#' dataTest=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
#' colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
#' ct_meanCol(dataTest)


ct_meanCol=function(x)
{
  #Step 1: We create an empty matrix:
  ##each cell in the matrix has value NA
  ##the matrix has the same number of rows as many variables as <<dataset x>> has

  means=matrix(NA, nrow=ncol(x), ncol=1)
  rownames(means)=colnames(x)
  colnames(means)=c("Mean")
  #Step 2: We write in each cell of our <<means>> matrix step by step:
  ##first: i=1, we write in <<means>> row 1 variable mean of <<dataset x>> column 1
  ##then: i=2, we write in <<means>> row 2 variable mean of <<dataset x>> column 2
  ##then: i=3, we write in <<means>> row 3 variable mean of <<dataset x>> column 3
  ##then: i=4, we write in <<means>> row 4 variable mean of <<dataset x>> column 4
  ##so on

  for(i in 1:ncol(x)) #i takes values from 1 to number of columns of <<dataset x>>
  {							 #beggining of loop
    #in matrix <<means>>, row i, column 1 we store the mean of the variable in <<dataset x>> column i
    ##we compute the mean of variable i as the sum of all elements in <<dataset x>> column i divided to our sample size = number of colleges = number of rows in <<dataset x>>
    means[i,1]=sum(x[,i])/length(x[,i])
  }							 #ending of loop
  means
}
