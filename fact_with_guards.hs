module Factorial where 
	factorial :: Integer -> Integer	
	factorial x 
		| x > 1 = x * factorial (x -1) 
		| otherwise =1 

-- guards can replace pattern matching 
-- and here it will be used for the base conditon in the recursion 

		
