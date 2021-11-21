#' @title pvalue
#' @description Interprets the p-value and adjusted r-squared for a regression model
#' @param x An object of class 'lm', your linear model 
#' @param ifelse() Logical statement which tests a statement about the object in the brackets
#' @param p Returns the p-value for the slope coefficient
#' @param q Interprets your p-value at 95% confidence level 
#' @param r Returns the adjusted R-squared value for your model 
#' @param s Interprets the adjusted R-squared value for your model  
#' @param summary() Function that generates the summary table with results from your fitted model 
#' @param coefficients[] Extracts the p-value for the slope coefficient from the summary table
#' @return A vector containing p,q,r and s
#' @examples 
#' pvalue(lm(mtcars$hp ~ mtcars$wt))
#' @export

model_sign <- function (x) {
  if (class(x) != "lm") stop("Not an object of class 'lm'. You are using class: ", class(x))
  p <- summary(x)$coefficients[2,4]
  q <- ifelse(p < 0.05, "Congratulations! Your model is significant at 5% significance level.", "Sorry, your model is not significant at 5% significance level")
  r <- summary(x)$adj.r.squared
  s <- c((r*100), "% of variation in Y can be explained by your model")
  return(c(p, q, r, s))
}


