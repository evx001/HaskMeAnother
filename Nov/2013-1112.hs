module Nov12 where 
-- http://www.huffingtonpost.com/huffpost-code/
-- :a -- for adding in a module but the types have to match. 
--
-- :set expandtab, :set ts=2,  
-- Chapter 1 
-- Show sum [x] = x for any number
-- Give another result for (double(double 2)) 
-- 7 `div` 2 -- note `div` rounds down to nearest proper fraction 
--
-- :load module -> more than one
--  
-- Haskell beginner's workshop 
-- Nov. 12 2013
-- Haskell 
--  Expressive
--    Impossible to unsafe trans action   
--  Declarative 
--  Strong Typing 
--  Small refactoring 
--    abstractions are tight not leaky
--    Refactors tends 
--  Referentially transparent 
--    inputs return same outputs 
--    even in different contexts 
--  Smart Assembly language out the back end. 
--  Compile type safety 
--
Prelude> :t '1'
'1' :: Char

Prelude> :t "10"
"10" :: [Char]

Prelude> :t 1
1 :: Num a => a

Prelude> :t 0.5
0.5 :: Fractional a => a

Prelude> (5.0 :: Double) -- creating a type for an individual value.
5.0

--
--  sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0] 
--
--  containers 
--    Lists -- single type for all elements 
--      [Int
--    Tuples 
--      hetro types fixed length

[(a,b,c) | a <- [1,2,3], b <- [1,2,3], c <- [1,2,3], (a/=b && a/=c && b/=c)]


