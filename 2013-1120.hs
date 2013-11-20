module Nov20 where 

-- want to repalce odds with primes 
--          prime_tups  n     = zip (primes n) [prime x | x <- primes n]     
-- and swap the order of the tuples so then 
--          primeTups   n     = zip [prime x | x <- primes n] (primes n) 
-- I can pulled via find  
factors     n     = [x| x  <- [1..n], n `mod` x == 0]
prime       n     = factors n == [1,n]
primes      n     = [x | x <- [2..n], prime x]
average     ns    = sum ns `div`  length ns
avPrime     n     = prime (average (primes n))
find        k t   = [v | (k', v) <- t, k == k']
odds        n     = map (\x -> x * 2 + 1) [0..n -1]
prime_tups  n     = zip (primes n) [prime x | x <- primes n]
primeTups   n     = zip [prime x | x <- primes n] (primes n) 

-- swavPrime n     = swap(prime(average(primes n)))
