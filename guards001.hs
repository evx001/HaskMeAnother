module Guards001  
( removeOdd  
, pow2
) where 

-- pattern matching allows us leavage the structure of data, where guards allow us to sfit data's values. 

pow2 n 
    | n == 0            = 1 
    | otherwise         = 2 * (pow2(n-1))

-- first thing to notice is "="  is way to the right of where we usually are in the functions we've seen so far. 
-- second is the "|" which replaces the "if" "then".
-- third is the use of otherwise, this takes the place of our "else."  


-----------------------------------------------
-- from the console we see. 
-- *Guards> pow2 6
-- 64
removeOdd [] = [] 
removeOdd (x:xs) 
    | mod x 2 == 0  = x : (removeOdd xs) 
    | otherwise     = removeOdd xs 
