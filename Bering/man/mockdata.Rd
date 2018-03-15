\name{mockdata}
\docType{data}
\alias{mockdata}
\title{Real wt N data with mock lamination data}
\description{This data set contains wtN time-series data from Knudson and Ravelo (2015). The lamination status is mock data. We will replace the mock data sets with the real data if/when our manuscript is accepted for publication.  }

\usage{data(mockdata)}
\format{
  A data frame with 3 columns:

   \describe{
    \item{age}{The age associated with the measurement.}
    \item{wtN}{The response vector.}
    \item{lam}{The lamination status of a measurement (0 indicates non-laminated and 1 indicates laminated).}
  }
}


\references{Knudson, K. P., and A. C. Ravelo (2015), North Pacific Intermediate Water circulation enhanced by the closure of the Bering Strait, \emph{Paleoceanography}, \bold{30}, 1287--1304, doi:10.1002/2015PA002840.  }

\examples{
data(mockdata)
}
\keyword{climate}



