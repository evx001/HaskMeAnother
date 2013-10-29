module Main where 
	
	fib :: Integer -> Integer 
	fib 0 = 1 
	fib 1 = 1 
	fib x = fib (x - 1) + fib (x - 2) 
	-- this works but it is slow 
	  
	fibTuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
	fibTuple (x, y, 0) = (x, y, 0) 
	fibTuple (x, y, index) = fibTuple (y, x + y, index - 1)

	-- here is a tuple, basically comma seperated items between parentheses. A counter will assist with the recursion. 

	-- a single parameter that is a three-tuple is not the same as taking three parameters 

fibResult :: (Integer, Integer, Integer) -> Integer
fib x = fibResult (fibTuple (0, 1, x))
