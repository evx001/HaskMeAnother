{-# LANGUAGE NoMonomorphismRestriction #-}
module Dada123 where 

   	dada1 (x,y) 	= x + y

	dada2 		= \(x,y) -> x + y 

   	dada3 x 	= \y -> x + y 

   	dada4 		= \x -> \y -> x + y  

   	dada5 x y 	= x + y

{- the rule is known as the "monomorphic restriction

 - so when there is a type variable such as x or y 
 - to the left of the = sign   
 - then the type gets infered broadly --
 -
		  		dada5 :: Num a => a -> a -> a
 - 
 - if there are no args on the left side of the = sign 
 - then the type will be infered more narrowy -- 
 - 
 - 				dada4 :: Integer -> Integer -> Integer 
 -
 - However if you desire you can turn it off as noted above.
-} 



