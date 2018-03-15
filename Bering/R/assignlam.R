# A function that randomizes a measurement to lam or nonlam based on the prior measurement's state (lam or nonlam). This is used to simulate the sampling distribution for the test statistics.

# Inputs: nmeas (number of measurements), pswitchL (if the last measurement was nonlam, this is the probability of the next measurement being lam), pstayL (if the last measurement was lam, this is the probability of the next measurement also being lam). 

# Output: a vector of length nmeas with either 0s or 1s. Each entry is the randomly assigned state. 1=lam, 0=nonlam.

assignlam <- function(nmeas, pswitchL, pstayL){
	#create vector that will hold the randomly assigned state for each measurement
	state <- rep(0, nmeas)

	#for each measurement (after the first), look at previous measurement's state
	for(i in 2:nmeas){

		#if the previous meas's state was nonlam, switch wp pswitchL
		if(state[i-1]==0){
		state[i] <- rbinom(1,1, pswitchL)
		}

		#if the previous meas's state was lam, stay wp pstayL
		if(state[i-1]==1){
		state[i] <- rbinom(1,1, pstayL)
		}    
	}


	state
}
