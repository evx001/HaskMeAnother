-- module NovFive where 
-- HASKELL TABS MUST BE SET TO ts=8 or the alignment will be off.
-- you can set tabs to = spaces // :set expandtab

-- when number of args is unknown, try using ":t f arg1"
-- 	and see what the first arg satisfies.  
{- 
Prelude> let mult x y z = x*y+z
Prelude> :t mult 1
mult 1 :: Num a => a -> a -> a
Prelude> :t mult 1 3
mult 1 3 :: Num a => a -> a
Prelude> :t mult 1 3 4
mult 1 3 4 :: Num a => a
Prelude>  mult 1 3 4
7 
--}
--
-- Overloaded operators, will necessitate  type class constraints. Num a =>

-- Two functions are the same type if they return equal values for equal args.
{-
Prelude> let dda = 2+2
Prelude> let dad = 2*2
Prelude> dad == dda
True
-} 

-- a function is a mapping from arguments of one type
-- to the results of another type.
-- 	
-- 	T1 to results of T2
--
-- Functions needn't be totalizing with regards to their args. 
-- There can be args for which the result can be undefined. 
-- Functions that return functions as their result are said to be curried.
-- Currying is when functions return functions 
-- and that function takes the next argument in the series and applies it
--  and it either terminates there and then or it continues the process until it terminates elsewhere. 
--  besides operators, numbers can also be overloaded. 4 :: Num a => 
--  module BmiTellPlus where 

-- module BmiTell where
-- bmiTell :: (Fractional a, Ord a) => a -> a -> [Char]
bmiTell :: Double -> Double -> String 
bmiTell weight height 
    | bmi <= thin   = "Under"
    | bmi <= normal = "Normal"
    | bmi <= over   = "Over" 
    | otherwise	    = "Morbid" 
    where bmi    =  weight / height ^ 2 
          thin   = 18.5 
          normal = 25.0 
          over   = 30.0 	



