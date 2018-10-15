#'@title Summarize one-way ANOVA results
#'
#'
#'@description 
#'\code{summary.oneway} summarizes the results of one-way anova
#'
#'@details
#'This function prints the ANOVA table from the linear model.
#'
#'@param object an object of class \code{oneway}
#'@param ... additional arguments passed to the print function.
#'
#'@export 
#'
#'@return the input object is returned silently
#'\item{oneway}{a list with the lm results}
#'\item{summarystats}{a data frame with the summary statistics}
#'
#'@author Belén Rodríguez <brodriguez@@wesleyan.edu>
#'
#'@examples
#'mileage <- oneway(hwy ~ class, cars)
#'summary(mileage)

summary.oneway <- function(object, ...){
  if(!inherits(object, "oneway")) stop("x must  be class 'oneway'")
  print(anova(object$anova), ...)
}