module Akte where 

akte	:: (Num i, Ord i) => i -> [a] -> [a] 
akte	n _ 
		|	n	<= 0 			= []
akte	_[] 				= []
akte 	n (x:xs) 		= x : akte (n-1) xs 
