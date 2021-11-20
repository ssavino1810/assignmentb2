test_that("P value is correct", {
  expect_equal(
    summary(lm(mtcars$hp ~ mtcars$wt))$coefficients[2,4], 
    p_val(reg_3))
})

test_that("Object is linear model", {
  expect_is(reg_3, "lm")
})

test_that("Error message exists", {
  expect_error(p_val(test_4),"Not an object of class 'lm'. You are using class: ")
})