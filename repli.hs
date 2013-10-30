module Repli where 
repli 	:: Int -> a -> [a]
repli 	n x 
		| n <= 0 			= []
		| otherwise = x : repli (n-1)	x 
