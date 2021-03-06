% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CurveFitting.R
\name{curveFitting}
\alias{curveFitting}
\title{Fit longitudinal data}
\usage{
curveFitting(df, method = "nbinomial", points)
}
\arguments{
\item{df}{dataframe has the Count, Group, ID, Time}

\item{method}{fitting method (negative binomial, LOWESS)}

\item{points}{points at which the prediction should happen}
}
\value{
returns the fitted model
}
\description{
Fits longitudinal samples from the same group using negative binomial smoothing splines or LOWESS
}
\examples{
data(metalonda_test_data)
n.sample = 5 
n.timepoints = 10 
n.group = 2 
Group = factor(c(rep(0, n.sample*n.timepoints), rep(1, n.sample*n.timepoints)))
Time = rep(rep(1:n.timepoints, times = n.sample), 2)
ID = factor(rep(1:(2*n.sample), each = n.timepoints))
points = seq(1, 10, length.out = 10)
aggretage.df = data.frame(Count = metalonda_test_data[1,], Time = Time, Group = Group, ID = ID)
cf = curveFitting(df = aggretage.df, method= "nbinomial", points)
}
\references{
Ahmed Metwally (ametwa2@uic.edu)
}
