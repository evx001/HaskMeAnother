module Recur where 
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

