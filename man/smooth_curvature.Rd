% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smooth_curvature.R
\name{smooth_curvature}
\alias{smooth_curvature}
\title{Smooth body segment angular changes over time.}
\usage{
smooth_curvature(df, settings, angle.df)
}
\arguments{
\item{df}{the results df}

\item{settings}{the experimental settings}

\item{angle.df}{raw angle data (ex. head.angle.df)}
}
\value{
the original df with 2 new columns for each segment:
        raw segment angle and smoothed segment angle
}
\description{
Use loess to smooth the response of the specified body segment.
}
