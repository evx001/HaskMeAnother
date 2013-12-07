module QsortR where

  qsortR []     = []
  qsortR (x:xs) = (qsortR larger ++ [x] ++ qsortR smaller) 
                where 
                    smaller = [a| a <- xs, a <= x]
                    larger  = [b| b <- xs, b > x]
                 



  factors n = [x| x <- [1..n], n `mod` x == 0]
  prime   n = factors n == [1,n] 
  primes  n = [x | x <- [2..n], prime x]       
