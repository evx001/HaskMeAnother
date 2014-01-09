{-# LANGUAGE NPlusKPatterns #-}

module Jan7 where 

-- to get into a module from term 
-- ghci filename.hs 

{- order evaluation doesn't matter in Pure FP.
import Data.List 

factorial n             = product(take n [1..n])
f2ctorial n             = product(genericTake n [1..n])
fact4 y                 = factorial y == f2ctorial y

intFactInt         x    = zip [1..][factorial y|y <-[1..x]]
intFactInteger     x    = zip [1..][factorial y|y <-[1..x]]
-- compIntIntegerFact x    = [snd (intFactInt!!n)|n <-[1..x]] == [snd (intFactInteger!!n)|n <-[1..x]] 

pr4duct :: [Integer] -> Integer
pr4duct [] 		= 1
pr4duct	(x:xs) 		= x * (pr4duct xs) 
-} 
-- 6.2 -- 
fact4rial           :: Integer -> Integer
fact4rial   0       = 1 
fact4rial   (n+1)   =  (n + 1) * fact4rial n  


{- renaming (*) so as not to conflict with primative
-- m5lti           :: a -> a -> a  
m5lti  0            = 0 * m5lti 
m5lti (*(n+1))      = m5lti + (m5lti * n)
-}



