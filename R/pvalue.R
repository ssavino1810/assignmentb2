#' @title Generate p-value 
#' @description Returns the p-value for a simple linear regression with 1 independent variable 
#' @param x An object of class 'lm', your linear model 
#' @param if() Logical statement which tests a statement about the object in the brackets
#' @param p Returns the p-value for the slope coefficient 
#' @param summary() Function that generates the summary table with results from your fitted model 
#' @param coefficients[] Extracts the p-value for the slope coefficient from the summary table
#' @return P-value for slope coefficient
#' @examples 
#' pvalue(reg1)
#' pvalue(lm(mtcars$hp ~ mtcars$wt))
#' @export

pvalue <- function (x) {
  if (class(x) != "lm") stop("Not an object of class 'lm'. You are using class: ", class(x))
  p <- summary(x)$coefficients[2,4]
  return(p)
}