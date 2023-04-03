#' Finds the mode value(s) for each column in a matrix or a data frame.
#'
#' @param x A matrix or a data frame.
#' @returns A matrix with the mode value(s) for each column in x.
#' The rownames are the colnames of x.
#' @examples
#' dataTest=cbind(c(10,10,50,12), c(100, 101, 102, 102), c(1, 1, 5,4))
#' colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
#' ct_modeCol(dataTest)
#' dataTest=cbind(c(10,10,50,12,50), c(100, 101, 102, 102, 103), c(1, 1, 5,4, 4))
#' colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
#' ct_modeCol(dataTest)

ct_modeCol=function(x)
{
  modeValues=matrix(NA, nrow=ncol(x), ncol=nrow(x))#a matrix full of "", with ncol(x) rows and nrows(x) columns
  rownames(modeValues)=colnames(x)				#variable names are stored as rownames
  colnames(modeValues)=rep("Mode",nrow(x)) 							#the name of the columns is "Mode"

  for(i in 1:ncol(x))
  {
    absFreq=as.data.frame(table(x[,i]))
    for (j in 1:length(as.numeric(as.character(absFreq[absFreq[,2]==max(absFreq[,2]),1]))))
    {
      modeValues[i,j]=as.numeric(as.character(absFreq[absFreq[,2]==max(absFreq[,2]),1]))[j]
      #the mode will be the element in column 1, on the row that has the maximum value on column 2
    }
  }
  modeValues[,colSums(is.na(modeValues))!= nrow(modeValues)]
}

