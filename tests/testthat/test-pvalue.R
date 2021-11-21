test_that("P value is correct", {
  expect_equal(
    summary(lm(mtcars$hp ~ mtcars$wt))$coefficients[2,4], 
    as.numeric(pvalue(lm(mtcars$hp ~ mtcars$wt))[1]))
})

test_that("Adj. R Square is correct", {
  expect_equal(
    summary(lm(mtcars$hp ~ mtcars$wt))$adj.r.squared, 
    as.numeric(pvalue(lm(mtcars$hp ~ mtcars$wt))[3]))
})

test_that("Error message exists", {
  expect_error(pvalue(mtcars),"Not an object of class 'lm'. You are using class: ")
})