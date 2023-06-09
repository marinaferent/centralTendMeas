% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ct_modeCol.R
\name{ct_modeCol}
\alias{ct_modeCol}
\title{Finds the mode value(s) for each column in a matrix or a data frame.}
\usage{
ct_modeCol(x)
}
\arguments{
\item{x}{A matrix or a data frame.}
}
\value{
A matrix with the mode value(s) for each column in x.
The rownames are the colnames of x.
}
\description{
Finds the mode value(s) for each column in a matrix or a data frame.
}
\examples{
dataTest=cbind(c(10,10,50,12), c(100, 101, 102, 102), c(1, 1, 5,4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_modeCol(dataTest)
dataTest=cbind(c(10,10,50,12,50), c(100, 101, 102, 102, 103), c(1, 1, 5,4, 4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_modeCol(dataTest)
}
