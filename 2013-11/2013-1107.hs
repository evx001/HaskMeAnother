{-# LANGUAGE NoMonomorphismRestriction #-}
-- you can set tabs to = spaces // in vim \\ :set expandtab 
-- import primes.hs // why no load import? 
module Nov7 
where 


















{- // iterative 
 - s = 0 ;
 - i = 0 ;
 - while i<n do
 - 	begin 
 - 		i = i + 1	; 
 - 		s = i * i + s ; 
 - 	end
 - 	 

sumSquares n 	= ssAcc 0 0 n 
ssAcc i s n 
	| i<n 		 	= ssAcc (i + 1) ((i + i) ^ 2 + s) n 
	| otherwise = s 
-} 

