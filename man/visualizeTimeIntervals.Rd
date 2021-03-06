% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Visualization.R
\name{visualizeTimeIntervals}
\alias{visualizeTimeIntervals}
\title{Visualize all significant time intervals for all tested features}
\usage{
visualizeTimeIntervals(interval.details, prefix = "MetaLonDA_timeline",
  unit = "days")
}
\arguments{
\item{interval.details}{Dataframe has infomation about significant interval (feature name, start, end, dominant, p-value)}

\item{prefix}{prefix for the output figure}

\item{unit}{time unit used in the Time vector (hours, days, weeks, months, etc.)}
}
\description{
Visualize all significant time intervals for all tested features
}
\references{
Ahmed Metwally (ametwa2@uic.edu)
}
