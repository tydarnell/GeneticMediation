% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/med_table_spg_function.R
\name{med_table_spg}
\alias{med_table_spg}
\title{SNP-Peak-Gene Mediation Table}
\usage{
med_table_spg(med.res.data, match_row, covar, simulations)
}
\arguments{
\item{med.res.data}{gene mediation data}

\item{match_row}{row in match dataframe: col1 SNP, col2 Peak, col3 Gene}

\item{covar}{covariates character variable, separate covariates with +}

\item{simulations}{number of simulations to run}
}
\description{
Create a mediation table for one SNP-Peak-Gene match
}
\keyword{mediation}
\keyword{spg}
