\name{twotailtest}
\alias{twotailtest}

\title{
Randomization-based hypothesis test to compare two means using a two-sided null hypothesis
}
\description{
Tests whether the mean of a variable is equal during laminated and nonlaminated intervals.
}

\usage{
twotailtest(myvar, teststat, pswitchL, pstayL, m)
}

\arguments{
  \item{myvar}{
The variable of interest
}
  \item{teststat}{
The test statistic: mean of the variable during laminated - mean during nonlam
}
  \item{pswitchL}{
The probability of switching  from nonlam to lam
}
  \item{pstayL}{
The probability of having another lam measurement
}
  \item{m}{
The Monte Carlo sample size for the randomization test
}
}
\details{
This uses Monte Carlo to simulate data sets. To simulate a data set, Monte Carlo is used to randomly assign each measurement to lam or nonlam. The test statistic for each simulated data set is calculated. Then the original sample's test statistic is compared to the distribution of simulated test statistics to produce a p-value. The p-value is the proportion of simulated test statistics as extreme or more extreme than the original data's test statistic. 
}
\value{

  \item{pvalue }{A p-value (calculated using the smaller tail)}
\item{lammean}{A vector of laminated means simulated under null hypothesis}
\item{nonlammean}{A vector of nonlaminated means simulated under null hypothesis}
\item{distrib}{A vector of mean differences, simulated under null hypothesis}

}

\author{
Christina Knudson, PhD
}


