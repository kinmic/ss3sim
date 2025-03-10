% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-results.r
\name{get_results_timeseries}
\alias{get_results_timeseries}
\title{Return the time series information from an iteration}
\usage{
get_results_timeseries(report.file)
}
\arguments{
\item{report.file}{An \code{\link[r4ss]{SS_output}} list for a model
(operating model or estimation model).}
}
\value{
A data frame with the following columns:
\itemize{
\item year
\item Area
\item Seas
\item Bio_smry
\item SpawnBio
\item Recruit_0
\item retainB_\link{0-9}+
\item retainN_\link{0-9}+
\item deadB_\link{0-9}+
\item deadN_\link{0-9}+
\item F_\link{0-9}+
\item SPRratio
\item rec_dev
\item raw_rec_dev
}
}
\description{
Extract and return time series from an \code{\link[r4ss:SS_output]{r4ss::SS_output()}} list, that is
read in from the estimation method of a single iteration. The main time
series information is included but no information about the uncertainty of
those measurements is available. See the derived quantities for uncertainty.
}
\details{
Information about both season and area are included in the data frame. For
values that have no associated season or area, i.e., are summary values over
all areas and seasons, the values are repeated for each area/season
combination within a given year. For example, the recruitment deviation is
for all areas and is thus repeated in each row across areas for a given year.
}
\seealso{
Other get-results: 
\code{\link{get_results_all}()},
\code{\link{get_results_derived}()},
\code{\link{get_results_scalar}()},
\code{\link{get_results_scenario}()}
}
\author{
Cole Monnahan
}
\concept{get-results}
