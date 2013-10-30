{- a recursive function -} 
module Maxx where 
maxx	:: (Ord a) => [a] -> a 
maxx 	[] = error "max epmty list" 
maxx	[x] = x
maxx	(x:xs) = max x (maxx xs) 


