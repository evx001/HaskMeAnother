module Jan7 where 
-- to get into a module from term 
-- ghci filename.hs 

-- order evaluation doesn't matter in Pure FP.
import Data.List 

-- where does factorial Int break? 
factorial n             = product(take n [1..n])
f2ctorial n             = product(genericTake n [1..n])
fact4 y                 = factorial y == f2ctorial y

intFactInt         x    = zip [1..][factorial y|y <-[1..x]]
intFactInteger     x    = zip [1..][factorial y|y <-[1..x]]
-- compIntIntegerFact x    = [snd (intFactInt!!n)|n <-[1..x]] == [snd (intFactInteger!!n)|n <-[1..x]] 

pr4duct :: [Integer] -> Integer
pr4duct [] 		= 1
pr4duct	(x:xs) 		= x * (pr4duct xs) 
 

