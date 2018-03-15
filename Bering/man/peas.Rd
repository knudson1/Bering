\name{peas}
\alias{peas}

\title{
Calculates empirical probabilities of switching states (laminated to non-laminated)
}
\description{
 This function  calculates the probabilities pswitchL (the probability of a laminated measurement following a nonlaminated measurement) and pstayL (the probability of a laminated measurement following a laminated measurement).
}
\usage{
peas(states)
}

\arguments{
  \item{states}{
A vector. Each component indicates the lamination status (0 is nonlam, 1 is lam) for a measurement in the time series.
}
}

\value{
 \item{pswitchL }{The probability of a laminated measurement following a nonlaminated measurement}
  \item{pstayL }{The probability of a laminated measurement following a laminated measurement}

}

\author{
Christina Knudson, PhD
}

\examples{
library(Bering)
data(mockdata)
peas(mockdata$lam)


}



