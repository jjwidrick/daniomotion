% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect_movement.R
\name{detect_movement}
\alias{detect_movement}
\title{Detect movement and latency}
\usage{
detect_movement(settings, df)
}
\arguments{
\item{settings}{experimental settings}

\item{df}{the results df}
}
\value{
the original df with latency and move.ms columns
}
\description{
Detect when the larvae starts to move. Calculate latency.
    Add a new column based on movement time (move.ms).
}
