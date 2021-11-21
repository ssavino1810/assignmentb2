
# assignmentb2

The goal of assignmentb2 is to provide a quick interpretation of the
p-value and adjusted r squared values associated with a regression
model.

## Installation

You can install the development version of assignmentb2 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ssavino1810/assignmentb2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(assignmentb2)
reg1 <- lm(mtcars$disp ~ mtcars$gear + mtcars$carb)
pvalue(reg1)
#> [1] 1.111756e-06
```

In this example, \[1\] returns the p-value and \[2\] interprets its
value at 5% significance level. \[3\] generates the adjusted r squared,
\[4\] and \[5\] interpret the result for you.
