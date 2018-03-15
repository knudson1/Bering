\name{nswitches}
\alias{nswitches}

\title{
Counts the number of times switching states
}
\description{
This function counts the number of times the state switches from lam to nonlam and vice versa.
}
\usage{
nswitches(states)
}

\arguments{
  \item{states}{
A vector. Each component indicates the lamination status (0 is nonlam, 1 is lam) for a measurement in the time series.
}
}

\value{

  \item{count0 }{The number of times switching to 0 (nonlam)}
  \item{count1}{The number of times switching to 1 (lam)}

}

\author{
Christina Knudson, PhD
}


\examples{
library(Bering)
data(mockdata)
nswitches(mockdata$lam)


}
