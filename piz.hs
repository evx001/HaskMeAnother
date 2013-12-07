module Piz where

piz 		:: [a] -> [b] -> [(a,b)]
piz		_ [] = 	[] 
piz  		[] _ =	[]
piz 		(x:xs) (y:ys) = (x,y):piz xs ys  
