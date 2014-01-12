module Jan11 where 
import Data.Char 
-- ---------------------------- 5.1 -- Generators ---------
-- ghci>[x^2|x<-[1..5]]
-- [1,4,9,16,25]
-- ghci>[(x,y)|x<-[1,2,3], y <- [4,5]]
-- [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]
-- ghci> [(x,y)|y<-[4,5], x <-[1,2,3]]
-- [(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]
-- ghci>[(x,y) | x <- [1..3], y <- [x..3]]
-- [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)] 

firsts          :: [(a,b)] -> [a] -- pulls first value from each tuple
firsts  ps      = [x|(x,_) <- ps] --  and turns it into a list. 
-- firsts [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]
-- [1,1,1,2,2,3]

l2ngth          :: [a] -> Int 
l2ngth  xs      = sum [1|_<-xs] 
-- l2ngth [(x,y) | x <- [1..3], y <- [x..3]] ------ note were are asking the length 
-- ------------------------------------------------ of a function result!!!
-- 6 ---------------------------------------------- not the length of the function itself.
-- l2ngth [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]
-- 6 
------------------------------------------------5.2 -- Guards 
factors         :: Int -> [Int] 
factors n       = [x|x <- [1..n], n `mod`x==0]
-- factors 15
-- [1,3,5,15]
-- factors 1147  ---------------------------------- Erik Meijer's favorite number
-- [1,31,37,1147]
prime           :: Int -> Bool 
prime   n       = factors n == [1,n] 
-- prime 1147
-- False
primes          :: Int -> [Int] 
primes  n       = [x|x <-[2..n],prime x]
-- primes 23 
-- [2,3,5,7,11,13,17,19,23]
find            :: Eq a => a -> [(a,b)] -> [b] 
find    k t     = [v|(k',v) <-t,k==k']
-- zip ['a'..'z'] (primes 23)
-- [('a',2),('b',3),('c',5),('d',7),('e',11),('f',13),('g',17),('h',19),('i',23)]

-- find 'e' (zip ['a'..'z'] (primes 23))
-- [11]

-------------------------------------------------- 5.3 -- zip
pairs           :: [a] -> [(a,a)]
pairs   xs      = zip xs (tail xs) 
-- pairs (primes 23)
-- [(2,3),(3,5),(5,7),(7,11),(11,13),(13,17),(17,19),(19,23)]
sorted          :: Ord a => [a] -> Bool
sorted  xs      = and[x<=y|(x,y) <- pairs xs] 
-- sorted (pairs(primes 23))
-- True
positions       :: Eq a => a -> [a] -> [Int] 
positions x xs  = [i|(x',i) <-zip xs [0..n], x==x']
                    where n = length xs - 1 
-- positions (17,19) [(2,3),(3,5),(5,7),(7,11),(11,13),(13,17),(17,19),(19,23)]
-- [6]
-- 5.4 -- String comprehensions --  

-- > ['a'..'z']!!13
-- 'n'

-- take 5 ['a'..'z']
-- "abcde"

-- length ['a'..'z']
-- 26

-- zip  [1..12] "Call me Ishmael"
-- [(1,'C'),(2,'a'),(3,'l'),(4,'l'),(5,' '),(6,'m'),(7,'e'),(8,' '),(9,'I'),(10,'s'),(11,'h'),(12,'m')]

lowers          :: String -> Int 
lowers xs       = length [x|x<-xs,isLower x]
-- lowers  "Call me Ishmael"
-- 11
count           :: Char -> String -> Int 
count x xs      = length [x'|x'<-xs,x==x']
-- count 'a'  "Call me Ishmael"
-- 2
-------------------------------------------5.5 -- Caesar cipher ----  

-- unicode conversions 

let2int         :: Char -> Int 
let2int c       = ord c - ord 'a' -- since unicode have number values 
------------------------------------ you can add and subtract them  
int2let         :: Int -> Char 
int2let n       = chr (ord 'a'+ n)

-- let2int 'a'
-- 0

-- int2let 0
-- 'a' 

shift           :: Int -> Char -> Char -------------------- almost a functor?
shift n c   | isLower c   = int2let((let2int c + n) `mod` 26)  
            | otherwise   = c
-- shift 11 'e'
-- 'p'

-- shift 11 'w'
-- 'h'

-- shift (-11) 'e'
-- 't'

encode          :: Int -> String -> String 
encode n xs     = [shift n x | x <- xs] 


table :: [ Float ] 
table = [ 8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4,6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1 ]

----------------------------------------------------------------
----------           EXERCISES 
----------------------------------------------------------5.8.1-- 
-- sum of first hundred squares

-- Prelude> sum [y^2|y<-[1..100]]
-- 338350

dada2 n a = concat [take n (repeat a)] 

d2 :: Integer -> Integer -> Integer -> Integer
d2 n m p =(div(product(concat(dada2(10101+1)[x^2|x<-[1..n]])))(product[m+11^11-1]))^p
-- (5.73 secs, 3833070184 bytes)
-- (1.34 secs, 259655336 bytes) 

