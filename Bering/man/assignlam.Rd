\name{assignlam}
\alias{assignlam}

\title{
Assigns lamination status 
}
\description{
A function that randomizes a measurement to lam or nonlam based on the prior measurement's state (lam or nonlam). This is used to simulate the sampling distribution for the test statistics.
}
\usage{
assignlam(nmeas, pswitchL, pstayL)
}

\arguments{
  \item{nmeas}{
The number of measurements
}
  \item{pswitchL}{
The probability of the next measurement being lam, given the last was  nonlam 
}
  \item{pstayL}{
 The probability of the next measurement also being lam, given the last was lam
}
}

\value{
A vector of length nmeas indicating the randomly assigned state. Components are 0s and 1s (1=lam, 0=nonlam.). 
}

\author{
Christina Knudson
}

\examples{
library(Bering)
data(mockdata)
sampsize <- nrow(mockdata)
mypeas <- peas(mockdata$lam)
out<- assignlam(sampsize, mypeas$pswitchL, mypeas$pstayL)
head(out)
tail(out)
length(out)
}


