module IfPrime where 


    
          
                factors   n       = [x| x <- [1..n], n `mod` x == 0]
                prime     n       = factors n == [1,n] 
                primes    n       = [x | x <- [2..n], prime x] 
                average   ns      = sum ns `div`  length ns 
                avPrime   n       = prime (average (primes n)) 
                factorial n       = product [1 .. n ]
                ifPrime   n       = (prime (average (primes n))) 
                                 
