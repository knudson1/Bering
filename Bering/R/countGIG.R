# This function goes through each laminated interval to determine whether there is a glacial observation and whether there is a interglacial observation.

#Inputs: a vector containing each measurement's state ("climate") and a vector indicating whether the measurement is lam or nonlam ("lam")

#Output is a list of length 3: 
##number of lams with an IG obs
##number of lams with an IG obs
##number of lams


countGIG <- function(climate, lam){
  
    nobs <- length(climate)
    islam <- TRUE         #first measurement is lam, so turn this on
    Gindicator <- FALSE   #initialize some things
    IGindicator <- FALSE
    IGcount <- Gcount <- 0
    lamintcount <- 1 #bc we start in a lam interval 

  for(i in 1:nobs){

    #are we in a new lam interval? (we are if the previous measurement wasn't but this is)
    if(islam == FALSE & lam[i]==1) {
       lamintcount <- lamintcount + 1 #if yes, increment lamintcount
       islam <- TRUE #indicate we are in a lam interval
       Gindicator <- FALSE #reset to indicate no Gs in this interval yet
       IGindicator <- FALSE #reset to indicate no IGs in this interval yet
       }
    
    # are we in a nonlam interval? if yes, turn off islam indicator
    if(lam[i]==0) {islam <- FALSE}
    
    #if we are in a lam interval...
    if(islam == TRUE){
        #if we haven't had  a G yet? 
        if(Gindicator == FALSE){
            #is this measurement a G? if yes, increment Gcount and turn on G indicator
            if(climate[i]=="G"){
                Gcount <- Gcount + 1
                Gindicator <- TRUE
            }
        }
    
        #if we haven't had  an IG yet? 
        if(IGindicator == FALSE){
            #is this measurement an IG? if yes, increment IGcount and turn on IG indicator
            if(climate[i]=="IG"){
                IGcount <- IGcount + 1
                IGindicator <- TRUE
            }
        }
 
    }
    
  }
  list(IGcount = IGcount, Gcount=Gcount, lamintcount = lamintcount)
}
