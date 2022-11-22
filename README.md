
# HW3correlation

<!-- badges: start -->
[![R-CMD-check](https://github.com/SherryLi1234/HW3Correlation/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/SherryLi1234/HW3Correlation/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/SherryLi1234/HW3Correlation/branch/main/graph/badge.svg?token=EIgq3X6z7Q)](https://codecov.io/gh/SherryLi1234/HW3Correlation)
<!-- badges: end -->

## Overview

The goal of HW3correlation is to provide functions that help you
calculate the most common correlation values between two variables.

- `cor_check`check if there is NA, empty cells, non-numeric, or unpaired
  values in each variable, and make sure there are at least 3
  observations in each variable.
- `cor_pearson`Calculate the Pearson correlation between two variables.
- `cor_check`Calculate the Spearman correlation between two variables.
- `cor_check`Calculate the Kendall’s tau-b between two variables.

If you are new to this package, you can learn more about these functions
in `vignette("Tutorial_for_HW3correlation")`.

## Installation

You can install the development version of HW3correlation from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("SherryLi1234/HW3Correlation")
```

## Example

This is a basic example which shows you how to solve a common problem:

### Note: Demonstrate the functions using R’s default dataset: mtcars

``` r
library(HW3correlation)
## basic example code

cor_check(mtcars$mpg,mtcars$cyl)
#> [[1]]
#> [1] "Pass: no NA and blank cells."
#> 
#> [[2]]
#> [1] "Pass: no non-numeric values."
#> 
#> [[3]]
#> [1] "Pass: The X and Y variable match each other."
#> 
#> [[4]]
#> [1] "Pass: Enough observation"
#> [[1]]
#> [1] "Pass: no NA and blank cells."
#> [[2]]
#> [1] "Pass: no non-numeric values."
#> [[3]]
#> [1] "Pass: The X and Y variable match each other."
#> [[4]]
#> [1] "Pass: Enough observation"

cor_pearson(mtcars$mpg,mtcars$cyl)
#> [1] -0.852162
#> [1] -0.852162

cor_spearman(mtcars$mpg,mtcars$cyl)
#> [1] -0.9108013
#> [1] -0.7794172

cor_kendallB(mtcars$mpg,mtcars$cyl)
#> [1] -0.7953134
#> [1] -0.7953134
```
