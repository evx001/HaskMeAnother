module Recursion where 
-----------------------------
-- -----RECURSION ------------ 
-- when a function calls itself. 
------------------------------
-- pow2 :: (Eq a, Num a, Num a1) => a -> a1
pow2 n =    
    if n == 0 -- at first this may look like we are redefining the number one.  
    then 1    -- if the condition is zero we want a one returned. This is the base case. 
    else 2 * (pow2 (n-1)) -- if not 0 then we want the function in the else condition. 

-- -- FROM THE CONSOLE -----  
-- *Recur> pow2 5
-- 32
-- *Recur> pow2 0
-- 1
----------------------------


factorial n = product [1..] 


fibonacc3 0		= 0
fibonacc3 1		= 1 
fibonacc3 (n+2) 	= fibonacc3 n + fibonacc3 (n+1) 


en5nFromTo m n  | m > n     = [] 
                | m <= n    = m : en5nFromTo (m+1) n 

{- the recursion call moves toward the smaller, reducing the distance between start point and end point.

    en5nFromTo 1 3 
=
    1: en5nFromTo 2 3 
=
    1 : (2 : en5nFromTo 3 3) 
= 
    1: (2 : (3 : en5nFromTo 4 3)
= 
    1 : (2 : (3 [])) 
= 
    [1,2,3] 
-}
