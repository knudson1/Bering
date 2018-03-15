# A function that calculates the probabilities pswitchL and pstayL.

# Input: vector of states (0 is nonlam, 1 is lam)

# Output is list of length 2: pswitchL (prob of switching from nonlam to lam), pstayL (prob of staying at lam)

peas <- function(states){

	###lam to nonlam first
	#number of laminated measurements
	denom <- sum(states==1) 

	#number of times it switched states
	nswitch <- nswitches(states)

	#number of times it switched to non lam
	count0 <- nswitch$count0

	#prob of switching from lam to nonlam
	pswitchNL<- count0/denom
	(pstayL <- 1-pswitchNL)

	###nonlam to lam next
	#number of laminated measurements
	denom <- sum(states==0) 

	#number of times it switched to lam: 
	count1 <- nswitch$count1

	#prob of switching from nonlam to lam
	(pswitchL<- count1/denom)

	list(pswitchL = pswitchL, pstayL = pstayL)
}
