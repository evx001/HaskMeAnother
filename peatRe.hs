module PeatRe where

peatRe 		:: a -> [a] 
peatRe 		x = x:peatRe x  
