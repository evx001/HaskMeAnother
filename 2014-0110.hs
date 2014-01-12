{-# LANGUAGE NPlusKPatterns #-}
module Jan10 where 
-- pushing on to Chapter 6 as there is some sense that we were going to fast. 
-- ghci -XNPlusKPatterns 2014-0110.hs
import Data.List 
-- import GHC.Base
-- import GHC.Char
-- order evaluation doesn't matter in Pure FP.
-- 6.1 -- 
factorial n             = product(take n [1..n])
f2ctorial n             = product(genericTake n [1..n])

fact4rial 0		= 1
fact4rial (n + 1)       = (n + 1) * factorial n              
-- 6.2 -- 
pr4duct :: [Integer] -> Integer
pr4duct [] 		= 1
pr4duct	(x:xs) 		= x * (pr4duct xs) 
 
-- let m * 0 = 0
-- let m*(n+1)= m+(m*n)

l2ngth          :: [a] -> Int 
l2ngth []       = 0 
l2ngth (_:xs)   = 1 + l2ngth xs 

r2verse         :: [a] -> [a] 
r2verse []      = [] 
r2verse (x:xs)  = r2verse xs ++ [x] 

ins2rt                          :: Ord a => a -> [a] -> [a]
ins2rt  x []                    = [x] 
ins2rt  x (y:ys)    | x <= y    = x : y : ys 
                    | otherwise = y : ins2rt x ys 

is4rt               :: Ord a => [a] -> [a] 
is4rt   []          = [] 
is4rt   (x:xs)      = ins2rt x (is4rt xs) 

z3p                     :: [a]->[b]->[(a,b)] 
z3p     []   _          = [] 
z3p     _ []            = [] 
z3p     (x:xs)  (y:ys)  = (x,y): z3p xs ys 

dr4p 0 xs               = xs 
dr4p (n +1) []          = [] 
dr4p (n +1) (_:xs)      = drop n xs 

f3bonacci   0           = 0 
f3bonacci   1           = 1
f3bonacci (n+2)         = f3bonacci n + f3bonacci (n +1) 

qs4rt       []          = [] 
qs4rt       (x:xs)      = qs4rt smaller ++ [x] ++ qs4rt larger 
                          where 
                            smaller = [a|a <- xs, a <= x] 
                            larger = [b|b <- xs, b > x] 

-- 6.5 -- mutual recursion -- 

ev2n 0                  = True 
ev2n (n+1)              = odd n 
oDd 0                   = False 
oDd (n+1)               = even n 
ev2ns       []          = [] 
ev2ns       (x:xs)      = x:oDds xs 
oDds        []          = [] 
oDds        (_:xs)      = ev2ns xs  

{- 
 -
 - 
 - let f 0 = 0 ; f (n+5) = n
 -
 - let f 0 = 0 ; f n | n >= 5 = n' where n' = n - 5 
 -}
