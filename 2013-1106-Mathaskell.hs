module PrImEs


factors n = [x| x <- [1..n], n `mod` x == 0]

prime n = factors n == [1,n] 

primes n = [x | x <- [2..n], prime x] 
{-- parens can over ride the default oder of operations 

Prelude> (2+3)^4
625
Proposition 1.2

Let n > 1 be a natural number  

LD(n) for the least natural number
        greater than 1 that divides n. 

A number d divides n if there is a natural number
        a with a ^ A d = n.

d divides n if there is a natural number a with n d = a, 
        i.e., division of n by d leaves no remainder.

LD(n) exists for every natural number n > 1, 
        for the natural number d = n is greater than 1 and divides n.   

1. If n > 1 then LD(n) is a prime number

2. If n > 1 and n is not a prime number, then (LD(n)) 2 <= n.   -}

