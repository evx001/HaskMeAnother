module Dada123 where 

   	dada1 (x,y) 	= x + y

	dada2 		= \(x,y) -> x + y 

   	dada3 x 	= \y -> x + y 

   	dada4 		= \x -> \y -> x + y  

   	dada5 x y 	= x + y

{- the rule (as near as I can tell), 
 - is when there is a type variable 
 - such as x or y to the left of the =  
 - then the type gets infered more broadly -- 
 - as in: 
 - :: Num a => a -> a -> a
 - if there are no args 
 - on the left side of the = 
 - then the type will be infered more narrowy.
 - as in: 
 - :: (Integer, Integer) -> Integer  
 


