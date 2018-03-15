# tests whether the mean of a variable *differs* between laminated and nonlam intervals.

#Inputs: myvar (the variable of interest), teststat (the test statistic: mean of the variable during laminated - mean during nonlam), pswitchL (the probability of switching from nonlam to lam), pstayL (the probability of having another lam measurement), m (the Monte Carlo sample size for the randomization test)

#Output is a list of length 4: 
##pvalue (two-tailed)
##lammean (vector of laminated means simulated under null hypothesis)
##nonlammean (vector of nonlaminated means simulated under null hypothesis)
##distrib (vector of mean differences, simulated under null hypothesis)

twotailtest <-
function(myvar, teststat, pswitchL, pstayL,  m)
{
  lammean <- nonlammean <- distrib<-rep(0,m)
  set.seed(1234)

  for(i in 1:m){
     # randomly assign measurements as lam or nonlam
     states <- assignlam(length(myvar), pswitchL, pstayL)
     newdat <-data.frame(cbind(states,myvar))
  
     # create sampling distribution under null hypothesis by
     # calculating (mean of nonlam) - (mean of lam)
     nonlammean[i] <- mean0 <- mean(newdat[newdat$states==0, 2]) 
     lammean[i] <- mean1 <- mean(newdat[newdat$states==1, 2]) 
     distrib[i] <- mean1 - mean0
  
  }

    # calculate pvalue using twice the smaller tail
    # we add one to include our test stat
    #reject the null if we see an extreme enough test statistic. 
    option1 <- sum(distrib<=teststat)+1 
    option2 <- sum(distrib>=teststat)+1 
    top <- min(c(option1, option2)) 
    bottom <- m+1
    pvalue <- 2*top/bottom
    list(pvalue=pvalue, lammean = lammean, nonlammean = nonlammean, distrib = distrib)
}
