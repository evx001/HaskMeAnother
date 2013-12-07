{-# LANGUAGE NoMonomorphismRestriction #-}
module NovElev where 
--      :set expandtab 
--      :set ts=2
-- ? loading the modules seperately but not via module import. 
  qsort[]     = []
  qsort(x:xs) =  (qsort larger ++ [x] ++ qsort smaller) 
 
                where 
                    smaller = [a| a <- xs, a <= x]
                    larger  = [b| b <- xs, b > x]
                        


  factors n = [x| x <- [1..n], n `mod` x == 0]
  prime   n = factors n == [1,n] 
  primes  n = [x | x <- [2..n], prime x] 
