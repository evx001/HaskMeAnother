module Case where
 
import Test.QuickCheck 
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
-- 
-- case epressions inside a function
describeList :: [a] -> String  
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list."  
-- THEY ARE USEFUL FOR PATTERN MATCHING AGAINST SOMETHING IN THE MIDDLE OF AN EXPRESSION.

-- here's a pattern matching version
describeLisT :: [a] -> String  
describeLisT xs = "The list is " ++ what xs  
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list."  


-- WE CAN TEST THAT THESE EXPRESSION DO THE SAMETHING WITH QUICKcHECK 
prop_describeLST xs = describeList xs ==  describeLisT xs 

-- *Case> quickCheck prop_describeLST
-- Loading package array-0.4.0.1 ... linking ... done.
-- Loading package deepseq-1.3.0.1 ... linking ... done.
-- Loading package bytestring-0.10.0.2 ... linking ... done.
-- Loading package Win32-2.3.0.0 ... linking ... done.
-- Loading package old-locale-1.0.0.5 ... linking ... done.
-- Loading package time-1.4.0.1 ... linking ... done.
-- Loading package random-1.0.1.1 ... linking ... done.
-- Loading package containers-0.5.0.0 ... linking ... done.
-- Loading package pretty-1.1.1.0 ... linking ... done.
-- Loading package template-haskell ... linking ... done.
-- Loading package QuickCheck-2.6 ... linking ... done.
-- +++ OK, passed 100 tests.-- prop_f3lt2r p xs = f3lter p xs == filt2r p xs 
