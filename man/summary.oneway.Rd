% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\name{summary.oneway}
\alias{summary.oneway}
\title{Summarize one-way ANOVA results}
\usage{
\method{summary}{oneway}(object, ...)
}
\arguments{
\item{object}{an object of class \code{oneway}}

\item{...}{additional arguments passed to the print function.}
}
\value{
the input object is returned silently
\item{oneway}{a list with the lm results}
\item{summarystats}{a data frame with the summary statistics}
}
\description{
\code{summary.oneway} summarizes the results of one-way anova
}
\details{
This function prints the ANOVA table from the linear model.
}
\examples{
mileage <- oneway(hwy ~ class, cars)
summary(mileage)
}
\author{
Belén Rodríguez <brodriguez@wesleyan.edu>
}
