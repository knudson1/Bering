
# onemeanRtest Tests whether the mean of a variable is *higher* during laminated intervals than would be expected if there were truly no relationship between sea levels and laminations.

#Inputs: myvar (the variable of interest), teststat (the test statistic: mean of the variable during laminations, pswitchL (the probability of switching from nonlam to lam), pstayL (the probability of having another lam measurement), m (the Monte Carlo sample size for the randomization test)

#Output is a list of length 3: 
##pvalue (one-tailed)
##lammean (vector of laminated means simulated under null hypothesis)
##nonlammean (vector of nonlaminated means simulated under null hypothesis)

onemeanRtest <-
function(myvar, teststat, pswitchL, pstayL,  m)
{
  nonlammeans <- lammeans <- rep(0,m)
  set.seed(1234)

  for(i in 1:m){
     # randomly assign measurements as lam or nonlam
     states <- assignlam(length(myvar), pswitchL, pstayL)
     newdat <-data.frame(cbind(states,myvar))
  
     # create sampling distribution under null hypothesis by
     # calculating (mean of lam)
     lammeans[i] <- mean(newdat[newdat$states==1, 2])
     nonlammeans[i] <- mean(newdat[newdat$states==0, 2])
  
  }

    # calculate pvalue
    # we add one to include our test stat
    #reject the null if we see a large enough (positive) test statistic. 
    top <- sum(lammeans>=teststat)+1 
    bottom <- m+1
    pvalue <- top/bottom
  
    #return the pvalue, the sampling dist of lam means built under Ho, and
    # the sampling dist of nonlam means built under Ho
    list(pvalue = pvalue, lammeans = lammeans, nonlammeans = nonlammeans)
}
