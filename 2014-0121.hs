module Jan21ListRec where 
-- import Data.Char
-- : set expandtab ts=4 ruler number spell
import Test.QuickCheck 


{- Church of Recursion
Recursion gets you everything you would want just as well as a Turing Machine 

a recursive definition of a list
    null, is in [] 
    or 
    constructed as in x:xs 
        with head x an element and tail xs as a list 
-}

-- odds 
-- comprehension 
odds :: Integral t => [t] -> [t]
odds xs = [x | x <- xs, odd x ]
-- Recursively 
oddsCond :: [Integer] -> [Integer]
oddsCond ws =
        if null ws then
            [] 
        else 
            let 
                x = head ws 
                xs = tail ws 
            in 
                if odd x then
                    x: oddsCond xs 
                else 
                    oddsCond xs 



oddsRec :: Integral a => [a] -> [a]
oddsRec []                  = []
oddsRec (x:xs)  | odd x     = x : oddsRec xs 
                | otherwise = oddsRec xs 

prop_RecOdds xs = oddsRec xs == odds xs 
prop_ifRecOdds xs = oddsCond xs == odds xs 

{- *Ch1ListsRecur> quickCheck prop_ifCondRec 
Loading package array-0.4.0.1 ... linking ... done.
Loading package deepseq-1.3.0.1 ... linking ... done.
Loading package old-locale-1.0.0.5 ... linking ... done.
Loading package time-1.4.0.1 ... linking ... done.
Loading package random-1.0.1.1 ... linking ... done.
Loading package containers-0.5.0.0 ... linking ... done.
Loading package pretty-1.1.1.0 ... linking ... done.
Loading package template-haskell ... linking ... done.
Loading package QuickCheck-2.6 ... linking ... done.
+++ OK, passed 100 tests.
-}

-- unpacking oddsRec 

oddsRec' :: Integral a => [a] -> [a]
oddsRec' []                  = []
oddsRec' (x:xs)  | odd x     = x : oddsRec xs 
                 | otherwise = oddsRec xs 
{-  oddsRec' [1,2,3] 
= 
    oddsRec' (1:(2:(3:[])))
=   { x = 1, xs = (2:(3:[])), odd 1 = True } -- 1 is True so it gets saved.  
    1: oddsRec' (2:(3:[])) 
=   { x = 2, xs = (3:[])), odd 2 = False } -- 2 is thrown away
    1: oddsRec' (3:[])
=   { x = 3, xs = (3:[])), odd 3 = True } --  3 is kept because it's True.
    1:(3: oddsRec' [] )
=   { x = []} -- and that equals [] 
    1 : (3:[]) -- this is just notation for [1,3] 
=   { we cons the remaining } 
    [1,3] 
-- this is all that is happening, without any need to address state. 
-------------------------------------------------------------------}
--                      SUMMING A LIST 
--------------------------------------------------------------------
-- summing doesn't lend it self so neatly to recusion.  
sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs)  = x + sum xs
{- 
    sum' [1,2,3] 
= {is really} 
    sum'(1:(2:(3:[])))
= {pulling apart the list via head and tail} 
    1 + sum' (2:(3:[]))
= {taking the next item} 
    1+(2+ sum' (3:[]))
= {applying + operator again } 
    1 + (2 + (3 + sum' []))
= {arriving at the empty list [] we use 0 because it's identity for addition}
    1 + (2 + (3 + 0))
= 
    6
-----------------------------------
product'    [] = 1 
product' (x:xs) = x * product xs 

    product [1,2,3] 
=
    product (1:(2:(3 : [])))
=
    1 * (product (2:(3: []))
=
    1 * (2 * (product (3 :[])))
=
    1 * (2 *(3 * (product [])))
=
    1 * (2 * (3 * 1 ))
=
    6 

[] = list is the identity ---------------}

-- Comprehension 
sumSqOdd xs = sum [x*x| x <- xs, odd x] 

-- Recursively 
sumSqOddRec     []              = 0
sumSqOddRec (x:xs)  | odd x     = x * x + sumSqOddRec xs 
                    | otherwise = sumSqOddRec xs 
{-
    sumSqOddRec [1,2,3] 
= 
    sumSqOddRec (1:(2:(3: [])))
= 
    1*1 + sumSqOddRec (2:(3: []))
= 
    1*1 + sumSqOddRec (3: [] ) -- 2 is even so it gets dropped 
= 
    1 * 1 + 3 * 3 + sumSqOddRec [] 
= 
    1*1 + 3*3 + 0 
= 
    1 + 9 + 0 
= 
    10 
-}    
