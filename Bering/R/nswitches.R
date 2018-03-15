
# A function that counts the number of times the state switches from lam to nonlam and vice versa. 

# Input: vector of states (0 for nonlam, 1 for lam)

# Output is list of length 2: 
## count0 (number of times switching to 0)
## count1 (number of times switching to 1)

nswitches <- function(states){
  
  count0 <- 0 #counts number of times switching to 0
  count1 <- 0 #counts number of times switching to 1
  oldstate<-0

  for(i in 2:length(states)){
     today <- states[i]
     if(today != oldstate) {
         if(today == 0) {count0 <- count0 + 1}
         if(today == 1) {count1 <- count1 + 1}
         oldstate <- today 
      }  
    }

list(count0 = count0, count1 = count1)

}
