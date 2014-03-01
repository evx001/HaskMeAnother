module Recur where 
-----------------------------
-- -----RECURSION ------------ 
-- when a function calls itself. 
------------------------------
-- pow2 :: (Eq a, Num a, Num a1) => a -> a1
pow2 n =    
    if n == 0 -- at first this may look like we are redefining the number one.  
    then 1    -- if the condition is zero we want a one returned. 
    else 2 * (pow2 (n-1)) -- otherwise we want something else 
                          --  
