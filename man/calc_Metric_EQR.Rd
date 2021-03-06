% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_metric_eqr.R
\name{calc_Metric_EQR}
\alias{calc_Metric_EQR}
\title{Calculate diatom water quality metrics, EQRs and WFD class for samples, and uncertainties of site classification}
\usage{
calc_Metric_EQR(x, metrics = "TDI5LM", verbose = TRUE)
}
\arguments{
\item{x}{list containing diatom and header (environmental) data. This will usually be the data structure imported by \code{\link{read_DARLEQ}}.}

\item{metrics}{character vector of metric codes.  Currently one or more of the following: "TDI3", "TDI4", "TDI5LM" (for river LM TDI calculations), "TDI5NGS" for river NGS metric, "LTDI1", "LTDI2" for lake LM TDI metric or "DAMLM" for river diatom acidification metric.}

\item{verbose}{logical to indicate should function stop immediately on error (TRUE) or return a \code{simpleError} (FALSE).  Defaults to TRUE.}
}
\value{
A list with a named element for each metric calculated. Each element in the list is itself a list containing the output from \code{\link{calc_EQR}} (ie. the sample and site metrics, EQRs and WFD classes), and the job summary produced by \code{\link{calc_Metric}}.
}
\description{
Calculate diatom water quality metrics, EQRs and WFD class for samples, and uncertainties of site classification
}
\details{
This is a wrapper function to \code{\link{calc_Metric}} and \code{\link{calc_EQR}} that calculates multiple metrics, EQRs and WFD classes.  The output can be saved to an Excel file using function \code{\link{save_DARLEQ}}.
}
\examples{
fn <- system.file("extdata/DARLEQ2TestData.xlsx", package="darleq3")
d <- read_DARLEQ(fn, "Rivers TDI Test Data")
x <- calc_Metric_EQR(d)
save_DARLEQ(x, outFile="results.xlsx")

}
\references{
Kelly, M., S. Juggins, R. Guthrie, S. Pritchard, J. Jamieson, B. Rippey, H. Hirst, and M. Yallop, Assessment of ecological status in UK rivers using diatoms. \emph{Freshwater Biology}, 2008. 403-422.

Juggins, S., M. Kelly, T. Allott, M. Kelly-Quinn, and D. Monteith, A Water Framework Directive-compatible metric for assessing acidification in UK and Irish rivers using diatoms. \emph{Science of The Total Environment}, 2016. 671-678.

Bennion, H., M.G. Kelly, S. Juggins, M.L. Yallop, A. Burgess, J. Jamieson, and J. Krokowski, Assessment of ecological status in UK lakes using benthic diatoms. \emph{Freshwater Science}, 2014. 639-654.
}
\author{
Steve Juggins \email{Stephen.Juggins@ncl.ac.uk}
}
