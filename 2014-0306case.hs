module Case where 

import Guards001 -- for removeOdd function 
-----------------------------------------------------
-- CASE AND GUARDS CAN'T BE IN THE SAME EXPRESSION 
-- if you want something like that use an IF expression
----------------------------------------------------



-- this does what a pattern match does 
double nums = case nums of 
    []          ->  [] 
    (x:xs)      -> (2 * x) : (double xs) 


anyEven nums = case (removeOdd nums) of 
    []          ->  False 
    (x:xs)      ->  True

-- anyEvens wouldn't be as elegant as a pattern match removeOdd
-- results from the console show ... 
-- *Case> anyEven [1,3..99]
-- False
-- *Case> anyEven [1..101]
-- True
-- *Case> anyEven []
-- False
-- *Case> anyEven [0]
-- True
-- *Case> anyEven [1]
-- False

-- *Case> :i anyEven
-- anyEven :: Integral a => [a] -> Bool
--         -- Defined at 2014-0306case.hs:13:1

-- *Case> :i removeOdd
-- removeOdd :: Integral a => [a] -> [a]
--         -- Defined at Guards001.hs:21:1
