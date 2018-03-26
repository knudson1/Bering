\name{mockd18O}
\docType{data}
\alias{mockd18O}
\title{Real d18O data with mock lamination data}
\description{This data set contains d18O time-series data from Knudson and Ravelo (2017). The lamination variable contains  mock data. We will replace the mock data sets with the real data if/when our manuscript is accepted for publication.  }

\usage{data(mockd18O)}
\format{
  A data frame with 5 columns:

   \describe{
    \item{age}{The age associated with the measurement.}
    \item{d18Osmooth}{The smoothed d18O values.}
	\item{windowmean}{The mean of the smoothed 18O value in a window.}
	\item{windowsd}{The standard deviation of the smoothed 18O value in a window.}
    \item{mocklam}{The lamination status of a measurement (0 indicates non-laminated and 1 indicates laminated).}
  }
}


\references{
Knudson, K. P. and Ravelo, A.C. Isotopes of benthic foraminifera
from different holes of IODP Site 323-U1342. (PANGAEA)
https://doi.org/10.1594/PANGAEA.876179 (2017).}

\examples{
data(mockd18O)
}
\keyword{climate}



