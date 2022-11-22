## README
***

**HW3correlation** 
  <!-- badges: start -->
  [![R-CMD-check](https://github.com/SherryLi1234/HW3Correlation/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/SherryLi1234/HW3Correlation/actions/workflows/R-CMD-check.yaml)
  <!-- badges: end -->

***

**Overview**

HW3correlation is a grammar of data manipulation, providing functions that help you calculate the most common correlation values between two variables.

 * `cor_check`check if there is NA, empty cells, non-numeric, or unpaired values in each variable, and make sure there are at least 3 observations in each variable.
 * `cor_pearson`Calculate the Pearson correlation between two variables.
 * `cor_check`Calculate the Spearman correlation between two variables.
 * `cor_check`Calculate the Kendall’s tau-b between two variables.
 
 If you are new to this package, you can learn more about these functions in `vignette("Tutorial_for_HW3correlation")`.
***
 
**Installation**
```
# To install the whole HW3correlation package:
install.packages("HW3correlation")
```
***
 
**Usage**

Note: Demonstrate the functions using R's default dataset: mtcars
```
library(HW3correlation)

cor_check(mtcars$mpg,mtcars$cyl)
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

cor_spearman(mtcars$mpg,mtcars$cyl)
#> [1] -0.7794172

cor_kendallB(mtcars$mpg,mtcars$cyl)
#> [1] -0.7953134

```
 

 
 
 
