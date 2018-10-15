#'@title Print one-way ANOVA results
#'
#'
#'@description 
#'\code{print.oneway} prints one-way anova results
#'
#'@details
#'This function prints one-way ANOVA results created by the
#'\code{\link{oneway}} function.
#'
#'@param x an object of class \code{oneway}
#'@param ... additional arguments passed to the print function
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
#'plot(mileage)

print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n", 
      "====================================================\n", sep="")
  print(x$summarystats)
  cat("\nAnova\n", 
      "====================================================\n", sep="")
  print(summary.lm(x$anova))
}