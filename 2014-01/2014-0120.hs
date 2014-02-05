module Jan20 where 
-- : set expandtab ts=4 ruler number spell 

-- module Ch1Lists where 
import Data.Char
import Test.QuickCheck 
-- Lists are the primary data structure in LISP like languages.
-- Where as Arrays are the primary data collection in C derived languages like Java.

examp1 = [x*x | x <- [1,2,3] ] 
-- [1,4,9]

examp2 = [toLower c | c <- "Hello From Haskell"] 
-- "hello from haskell"
examp3 = [ (x, even x) | x <- [1,2,3] ] 
-- [(1,False),(2,True),(3,False)] 
{------ notes -------------------------------
    [x*x | x <- [1,2,3] ] is a list comprehension 
   x <- [1,2,3] is a generator 
   <- means "drawn from" 
   [(1,False).....] pairs in a list 
   | are guards and they evaluate true or false 
   isLower 
   Converts a letter to the corresponding lower-case letter, if any. Any other character is returned unchanged. 
------------------------------------------}
examp4 = [x|x <-[1..5], odd x] 
-- [1,3,5]
examp5 = [x*x | x <-[1..5], odd x]  
-- [1,9,25]
examp6 = [x|x <- [42, -5, 24, 0, -3], x >= 0]
-- [42,24,0]
examp7 = [ toLower c | c <- "Hello, World!", isAlpha c ] 
-- "helloworld"
{------ notes -------------------------------
    isAlpha Selects alphabetic Unicode characters (lower-case, upper-case and title-case letters, plus letters of caseless scripts and modifiers letters).
------------------------------------------}

f1 = sum [1,2,3] 
-- 6
f2 = sum []
-- 0  
f3 = sum [x*x| x <- [1,2,3], odd x] 
-- 10 
f4 = product [1,2,3,4] 
-- 24
f5 = product [] 
-- 1
factorial n = product [1..n] 
f6 = factorial 4 
-- 24
{------ notes -------------------------------
When you encounter a function you can politely ask
Are you Associative?
What is you identity element? 
For + and - it will be 0 
For * and / it will be 1
for [] it my be 1 or 0 
[1..n] a list from 1 to whatever n is 
    eager oop languages would hate this notation 
    and choke on trying to call a potentially 
    infinite list
------------------------------------------}
squares :: [Integer] -> [Integer] 
squares xs = [x * x | x <- xs] 
odds :: [Integer] -> [Integer] 
odds xs = [x|x <- xs, odd x] 
sumSqOdd :: [Integer] -> Integer 
sumSqOdd xs = sum [x*x | x <- xs, odd x]
------ QuickCheck required here ----------------
-- prop_sumSqOdd :: [Integer] -> Bool 
prop_sumSqOdd xs = sum (squares (odds xs)) == sumSqOdd xs 

{- --------------------------------------------
Running quickCheck from the prompt with prop_sumSqOdd as it's argument. 
*Ch1Lists> quickCheck prop_sumSqOdd
Loading package array-0.4.0.1 ... linking ... done.
Loading package deepseq-1.3.0.1 ... linking ... done.
Loading package bytestring-0.10.0.2 ... linking ... done.
Loading package Win32-2.3.0.0 ... linking ... done.
Loading package old-locale-1.0.0.5 ... linking ... done.
Loading package time-1.4.0.1 ... linking ... done.
Loading package random-1.0.1.1 ... linking ... done.
Loading package containers-0.5.0.0 ... linking ... done.
Loading package pretty-1.1.1.0 ... linking ... done.
Loading package template-haskell ... linking ... done.
Loading package QuickCheck-2.6 ... linking ... done.
+++ OK, passed 100 tests.
-------------------------------------------------------}
-- module Ch1ListsRecur where 
-- import Data.Char
-- import Test.QuickCheck 
{- Church of Recursion
Recursion gets you everything you would want just as well as a Turing Machine 

a recursive definition of a list
    null, is in [] 
    or 
    constructed as in x:xs 
        with head x an element and tail xs as a list 

Cons as in Construct And Append 

(:) :: a -> [a] -> [a]
(++) :: [a] -> [a] -> [a]

*Ch1ListsRecur> 1:[2,3]
[1,2,3]

*Ch1ListsRecur> [1]++[2,3]
[1,2,3]

*Ch1ListsRecur> [4]++[2,3]++[1]
[4,2,3,1]

*Ch1ListsRecur> 'r':"ecursion"
"recursion"

*Ch1ListsRecur> "re"++ "cursion"
"recursion"

*Ch1ListsRecur> 1:2:3:4:[]
[1,2,3,4]


*Ch1ListsRecur> [4]:[2,3]:[1] -- error
<interactive>:14:2:
    No instance for (Num t0) arising from the literal `4'

    
*Ch1ListsRecur> "h":"e":"l":"l":"o":[]
["h","e","l","l","o"]
*Ch1ListsRecur> 'h':'e':'l':'l':'o':[]
"hello"

*Ch1ListsRecur> null []
True
*Ch1ListsRecur> null [1,2]
False

*Ch1ListsRecur> tail [1,2]
[2]
*Ch1ListsRecur> tail [1]
[]
*Ch1ListsRecur> head [1,2,3]
1
*Ch1ListsRecur> head []
*** Exception: Prelude.head: empty list
    
*Ch1ListsRecur> head "re":"ecursion"
"recursion"

*Ch1ListsRecur> tail "re"++ "cursion"
"ecursion"

*Ch1ListsRecur> head "re"++ "cursion"

<interactive>:29:6:
    Couldn't match type `Char' with `[Char]'
    Expected type: [[Char]]
      Actual type: [Char]
    In the first argument of `head', namely `"re"'
    In the first argument of `(++)', namely `head "re"'
    In the expression: head "re" ++ "cursion"

-}
-- as a list comprehension 
squares' :: [Integer] -> [Integer] 
squares' xs = [x * x | x <- xs]

-- as Recursion 
squaresRec :: [Integer] -> [Integer] 
squaresRec []       = [] 
squaresRec (x:xs)   = x*x : squaresRec xs 

-- *Ch1ListsRecur> squaresRec [1,2,3]
-- [1,4,9]


