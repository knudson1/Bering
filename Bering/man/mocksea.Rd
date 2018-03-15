\name{mocksea}
\docType{data}
\alias{mocksea}
\title{Real sea level data with mock lamination data}
\description{This data set contains time-series sea-level data and simulated lamination status. We will replace the mock data sets with the real data if/when our manuscript is accepted for publication.  }

\usage{data(mocksea)}
\format{
  A data frame with 3 columns:

   \describe{
    \item{age}{The age associated with the measurement.}
    \item{sealevel}{The sea level recorded.}
    \item{lam}{The lamination status of a measurement (0 indicates non-laminated and 1 indicates laminated).}
  }
}

\references{
Rohling, E. J. et al. Antarctic temperature and global sea level closely coupled over the past five glacial cycles. \emph{Nature Geoscience}, \bold{2}, 500--504, (2009), doi:10.1038/ngeo557.

Sosdian, S. & Rosenthal, Y. Deep-Sea temperature and ice volume changes across the Pliocene-Pleistocene climate transitions. \emph{Science}, \bold{325}, 306--310, (2009), doi:10.1126/science.1169938.

  }

\examples{
data(mocksea)
summary(mocksea)
}
\keyword{climate}

