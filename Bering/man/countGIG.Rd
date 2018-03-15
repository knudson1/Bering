\name{countGIG}
\alias{countGIG}

\title{
Checks for presence of glacial/interglacial measurement in each lamination
}
\description{
This function goes through each laminated interval to determine whether there is a glacial observation and whether there is a interglacial observation.
}
\usage{
countGIG(climate, lam)
}

\arguments{
  \item{climate}{
A vector containing each measurement's state
}
  \item{lam}{
A vector indicating whether the measurement is lam or nonlam
}
}

\value{


 \item{IGcount }{A scalar indicating number of laminations with an interglacial observation}
 \item{Gcount }{A scalar indicating number of laminations with a glacial observation}
 \item{lamintcount }{A scalar indicating number of laminations in total}


}

\author{
Christina Knudson, PhD
}

