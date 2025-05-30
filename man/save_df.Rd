% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_df.R
\name{save_df}
\alias{save_df}
\title{Save df}
\usage{
save_df(df, save.label, settings, results_dir)
}
\arguments{
\item{df}{the df to save}

\item{save.label}{what to name the saved df (within quotation marks)}

\item{settings}{the experimental settings}

\item{results_dir}{the directory where the df is saved}
}
\value{
small.df, a df with selected kinematic variables for use in plots
}
\description{
Save a dataframe as a .csv file to the results_dir.
}
