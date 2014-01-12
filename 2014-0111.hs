module Jan11 where 
import Data.Char 
--5.8.1-- 
-- sum of first hundred squares

-- Prelude> sum [y^2|y<-[1..100]]
-- 338350

dada2 n a = concat [take n (repeat a)] 

d2 :: Integer -> Integer -> Integer -> Integer
d2 n m p =(div(product(concat(dada2(10101+1)[x^2|x<-[1..n]])))(product[m+11^11-1]))^p
-- (5.73 secs, 3833070184 bytes)
-- (1.34 secs, 259655336 bytes) 
-----------------------------------------------------------
-- Chapter examples from 5.1 -- 5.....
{-
ghci>[x^2|x<-[1..5]]
[1,4,9,16,25]
    
ghci>[(x,y) | x <- [1..3], y <- [x..3]]
[(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)] 

ghci>[(x,y)|x<-[1,2,3], y <- [4,5]]
[(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]



-} 




first           :: [(a,b)] -> [a] 
first   ps      = [x|(x,_) <- ps] 
l2ngth          :: [a] -> Int 
l2ngth  xs      = sum [1|_<-xs] 
factors         :: Int -> [Int] 
factors n       = [x|x <- [1..n], n `mod`x==0]
prime           :: Int -> Bool 
prime   n       = factors n == [1,n] 
primes          :: Int -> [Int] 
primes  n       = [x|x <-[2..n],prime x] 
find            :: Eq a => a -> [(a,b)] -> [b] 
find    k t     = [v|(k',v) <-t,k==k']
pairs           :: [a] -> [(a,a)]
pairs   xs      = zip xs (tail xs) 
sorted          :: Ord a => [a] -> Bool
sorted  xs      = and[x<=y|(x,y) <- pairs xs] 
positions       :: Eq a => a -> [a] -> [Int] 
positions x xs  = [i|(x',i) <-zip xs [0..n], x==x']
                    where n = length xs - 1 
lowers          :: String -> Int 
lowers xs       = length [x|x<-xs,isLower x]

count           :: Char -> String -> Int 
count x xs      = length [x'|x'<-xs,x==x']

let2int         :: Char -> Int 
let2int c       = ord c - ord 'a' 
int2let         :: Int -> Char 
int2let n       = chr (ord 'a'+ n)
{- 
ghci> let2int 'a'
0
ghci> int2let 0
'a'
-}

