# centralTendMeas

R package for computing the mean, median and mode values for vectors and
each column in matrices (dataframes). Works for multimodal distributions
also.

The functions were developed for instructional purposes as examples for
the course *Basics of R programming language in statistical analysis*.

## Installation

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
install_github("marinaferent/centralTendMeas")
```

    ## Skipping install of 'centralTendMeas' from a github remote, the SHA1 (7fe55d25) has not changed since last install.
    ##   Use `force = TRUE` to force installation

## Usage

``` r
library(centralTendMeas)
#computing the arithmetic mean of the values of a vector:
ct_mean(c(10,50,12,43))
```

    ## [1] 28.75

``` r
#computing the arithmetic mean value for each column in a matrix or a data frame:
dataTest=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_meanCol(dataTest)
```

    ##              Mean
    ## Variable 1  28.75
    ## Variable 2 101.50
    ## Variable 3   2.75

``` r
#computing the median value of the values of a vector:
ct_median(c(10,50,12,43))
```

    ## [1] 12

``` r
#--note that length(c(10,50,12,43)) is 4 and thus, divisible by 2

ct_median(c(10,50,12,43, 10))
```

    ## [1] 12

``` r
#--note that length(c(10,50,12,43, 10)) is 5 and thus, not divisible by 2

#computing the median value for each column in a matrix or a data frame:
dataTest1=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
#--note that length(dataTest1[,1]) is 4 and thus divisible by 2
colnames(dataTest1)=c("Variable 1", "Variable 2", "Variable 3")
ct_medianCol(dataTest1)
```

    ##            Median
    ## Variable 1   27.5
    ## Variable 2  101.5
    ## Variable 3    2.5

``` r
dataTest2=cbind(c(10,50,12,43,10), c(100, 101, 102, 103, 103), c(1, 1, 5,4, 7))
#--note that length(dataTest2[,1]) is 5 and thus NOT divisible by 2
colnames(dataTest2)=c("Variable 1", "Variable 2", "Variable 3")
ct_medianCol(dataTest2)
```

    ##            Median
    ## Variable 1     12
    ## Variable 2    102
    ## Variable 3      4

``` r
#finding the mode value(s) of a numeric vector:
ct_mode(c(10,10,12,43))
```

    ## [1] 10

``` r
ct_mode(c(10,43,10,12,43))
```

    ## [1] 10 43

``` r
#finding the mode value(s) for each column in a matrix or a data frame:
dataTest=cbind(c(10,10,50,12,50), c(100, 101, 102, 102, 103), c(1, 1, 5,4, 4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_modeCol(dataTest)
```

    ##            Mode Mode
    ## Variable 1   10   50
    ## Variable 2  102   NA
    ## Variable 3    1    4
