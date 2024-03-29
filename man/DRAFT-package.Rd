% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/draft.R
\docType{package}
\name{DRAFT-package}
\alias{DRAFT}
\alias{DRAFT-package}
\title{DRAFT: Disease Rapid Analysis and Forecasting Tool}
\description{
Fits epidemic data to and generates stochastic profiles of a model with constant or time-dependent behavior modification parameters. Two parameters, p and q, describe the effect of reduced contact rate of susceptible and infectious populations, respectively as described by Brauer (2011) <doi:10.1186/1471-2458-11-S1-S3>. In the absence of behavior modification, p=q=1, we recover the familiar compartmental Susceptible-Infectious-Recovered (SIR) equations. 'DRAFT' supports both constant values for p and q and a time-dependent form which smoothly changes p and q from their initial, pre-epidemic value of 1.0 to the user chosen values that are between 0 and 1. The start and transient time of behavior change are set by the user. 'DRAFT' can be used to compare forecasts of epidemic incidence with and without behavior modification.  Additional parameters and data fitting methods are explained in Ben-Nun et al (2019) <doi:10.1371/journal.pcbi.1007013>.
}
\details{
The primary function that a user will need is runDRAFT().  See \code{\link{runDRAFT}} for more details.  Also, see the vignette \code{vignette("DRAFT_examples")} for some examples.
}
\author{
\strong{Maintainer}: James Turtle \email{jturtle@predsci.com}

Authors:
\itemize{
  \item Michal Ben-Nun \email{mbennun@predsci.com}
}

Other contributors:
\itemize{
  \item Pete Riley \email{pete@predsci.com} [contributor]
}

}
\keyword{internal}
