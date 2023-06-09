# centralTendMeas: Measures of central tendency for vectors and columns in matrices

R package for computing the mean, median and mode values for vectors and
each column in matrices (dataframes). Works for multimodal distributions
also.

The functions were developed for instructional purposes as examples for
the course *Basics of R programming language in statistical analysis*.

## Installation

``` r
library(devtools)
```

``` r
install_github("marinaferent/centralTendMeas")
```

## Usage

``` r
library(centralTendMeas)
```
Computing the *arithmetic mean* of the values of a *vector*:

``` r
ct_mean(c(10,50,12,43))
```

    ## [1] 28.75

Computing the *arithmetic mean* value for *each column in a matrix/data frame*:
``` r

dataTest=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_meanCol(dataTest)
```

    ##              Mean
    ## Variable 1  28.75
    ## Variable 2 101.50
    ## Variable 3   2.75

Computing the *median value* of the values of a *vector*:
``` r
ct_median(c(10,50,12,43))
#--note that length(c(10,50,12,43)) is 4 and thus, divisible by 2
```

    ## [1] 12

``` r
ct_median(c(10,50,12,43, 10))
#--note that length(c(10,50,12,43, 10)) is 5 and thus, not divisible by 2
```

    ## [1] 12


Computing the *median value* for *each column in a matrix/data frame*:

``` r
dataTest=cbind(c(10,50,12,43), c(100, 101, 102, 103), c(1, 1, 5,4))
#--note that length(dataTest[,1]) is 4 and thus divisible by 2
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_medianCol(dataTest)
```

    ##            Median
    ## Variable 1   27.5
    ## Variable 2  101.5
    ## Variable 3    2.5

``` r
dataTest=cbind(c(10,50,12,43,10), c(100, 101, 102, 103, 103), c(1, 1, 5,4, 7))
#--note that length(dataTest[,1]) is 5 and thus NOT divisible by 2
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_medianCol(dataTest)
```

    ##            Median
    ## Variable 1     12
    ## Variable 2    102
    ## Variable 3      4


Finding the *mode value(s)* of a numeric *vector*:
``` r
ct_mode(c(10,10,12,43))
```

    ## [1] 10

``` r
ct_mode(c(10,43,10,12,43))
```

    ## [1] 10 43

Finding the *mode value(s)* for *each column in a matrix/data frame*:

``` r
dataTest=cbind(c(10,10,50,12,50), c(100, 101, 102, 102, 103), c(1, 1, 5,4, 4))
colnames(dataTest)=c("Variable 1", "Variable 2", "Variable 3")
ct_modeCol(dataTest)
```

    ##            Mode Mode
    ## Variable 1   10   50
    ## Variable 2  102   NA
    ## Variable 3    1    4

## License

[MIT](https://choosealicense.com/licenses/mit/)
