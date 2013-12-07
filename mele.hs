module Mele where 
mele	:: (Eq a) => a -> [a] -> Bool
mele	a [] = False 
mele 	a (x:xs) 
		| a == x    =	True 
		| otherwise =	a mele	xs 
