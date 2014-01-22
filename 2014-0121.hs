module Ch1ListsRecur where 
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

