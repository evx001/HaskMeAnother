{-# LANGUAGE NPlusKPatterns #-}
module Ch6probs where
-- ghci -XNPlusKPatterns
import qualified Data.List as D 
-- 6.8.1 -- 
-- do the (^) operator  like we did for (*) 
{- 
mult 			:: Integer->Integer->Integer
m `mult` 0 		= 0
m `mult`(n+1)		= m+(m`mult`n)


our type def. 
(^) :: (Num a, Integral b) => a -> b -> a       -- Defined in `GHC.Real'
-}
eXpo :: (Integral a, Num a1) => a1 -> a -> a1
m `eXpo`  0 = 1
m `eXpo` (n+1) = m * m `eXpo` n
-- > 2 `eXpo` 3
-- 8

2 `eXpo` 3
= {applying `eXpo` } 
2 * (2 `eXpo` 2)
= {applying `eXpo` } 
2*(2*(2 `eXpo` 1))
= {applying `eXpo` }
2*(2*(2*(2  `eXpo` 0)))
= {applying `eXpo` }
2*(2*(2*1)) 
= {applying * }
8
 
{- 6.8.2.1 --
length [1,2,3] 
= {applying length}
1+ length [2,3] 
= {applying length}
1+(1 + length [3])
= {applying length}
1 +(1+(1(1 + 0)))
= {applying +}
3
















































-----------------------------------------------------------------------
--			CHAPTER EXAMPLES
-- --------------------------------------------------------------------
-- Remember order of arg evaluation doesn't matter as much in Pure FP.
------------------------------------------------------------------------
-- 6.1 -- 
factorial               :: Int -> Int 
factorial n             = product(take n [1..n])

f2ctorial               :: Integral a => a -> a         
f2ctorial n             = product(D.genericTake n [1..n])
-- Int v. Integer in factorial results; perhaps it's the repl only?  
fact4rial               :: Int -> Int 
fact4rial 0		= 1
fact4rial (n + 1)       = (n + 1) * factorial n              

f2ct4rial               :: Integral a => a -> a 
f2ct4rial 0		= 1
f2ct4rial (n + 1)       = (n + 1) * f2ctorial n    

{- factoriaL               :: Int -> Int 
factoriaL [] 		= []
factoriaL [0]		= [1]
factoriaL (n + 1)       = (n + 1) * factorial n              

-- f2ctoriaL               :: Integral a => a -> a 
f2ctoriaL 0		= 1
f2ctoriaL (n + 1)       = (n + 1) * f2ctorial n    
-}

factoriaL n             = [product(take n [1..n])|n<-[1..n]]
f2ctoriaL n             = [product(D.genericTake n [1..n])|n<-[1..n]]
cmpairfact n 		= zip (factoriaL n) (f2ctoriaL n) 

--(*) -- going to have to settle for just two args here
mult 			:: Integer->Integer->Integer
m `mult` 0 		= 0
m `mult`(n+1)		= m+(m`mult`n)
-- 6.2 -- 
pr4duct                 :: [Integer] -> Integer
pr4duct [] 		= 1
pr4duct	(x:xs) 		= x * (pr4duct xs) 
 
l2ngth 			:: [a] -> Integer
l2ngth []		= 0 
l2ngth (_:xs) 		= 1 + l2ngth xs 

r2verse 		:: [a]->[a]
r2verse []		= []
r2verse (x:xs) 		= r2verse xs ++ [x]  

-- (++)
join 			:: [a]->[a]->[a]
[] `join` ys 		= ys
(x:xs) `join` ys	= x:(join xs ys) 

{- > join [1,2,3] [4,5,6]
[1,2,3,4,5,6]
-}

ins2rt 				:: Ord a => a->[a]->[a]
ins2rt x []			= [x] 
ins2rt x (y:ys) |x<=y		= x:y:ys
		|otherwise	= y:ins2rt x ys

is4rt			:: Ord a=>[a]->[a]
is4rt [] 		= []
is4rt (x:xs) 		= ins2rt x (is4rt xs) 

-- 6.3 -- Multi args
z3p  			:: [a]->[b]->[(a,b)] 
z3p  [] _ 		= []
z3p  _ [] 		= []
z3p  (x:xs) (y:ys) 	= (x,y):z3p  xs ys 			

dr4p 			:: Integer -> [a]->[a]
dr4p 0 xs 		= xs 
dr4p (n+1) []		= []
dr4p (n+1) (_:xs) 	= dr4p n xs 

-- > dr4p 5 [1..11]
-- [6,7,8,9,10,11]

-- 6.4 -- Multiple recursion 
fibonacc3		:: Integer -> Integer 
fibonacc3 0		= 0
fibonacc3 1		= 1 
fibonacc3 (n+2) 	= fibonacc3 n + fibonacc3 (n+1) 


-- compare to first meeting
qsort 			:: Ord a => [a]->[a] 
qsort [] 		= []
qsort (x:xs) 		= qsort smaller ++ [x] ++ larger
			  where 
				smaller = [a|a<-xs,a<=x]
				larger	= [b|b<-xs,b>x]

-- 6.5 -- mutual recursion 
ev2n 			:: Integer -> Bool
ev2n 0 			= True
ev2n (n+1) 		= odd n

oDD 			:: Integer -> Bool 
oDD 0			= False
oDD (n+1) 		= ev2n n  

--  ev2n 5
--  False
--  ev2n 6
--  True
--  oDD 0
--  False

-- this uses position not value;  evens [0..n] will return evens 
-- return the opposite  [1..n] will not. 

evens 			:: [a] -> [a] 
evens 	[]		= []
evens 	(x:xs) 		= x:odds xs  

odds 			:: [a] -> [a] 
odds []			= []
odds (_:xs)		= evens xs  

-- 6.6 --  
{-------------------------------------------------------------
pYths n           = [(x,y,z)|   x <- [1..n],
                                y <- [1..n],
                                z <- [1..n],
                                x ^ 2 + y^2 == z^2]


-- nested guards 
concat [[(x,y) | y <- [4,5,6]]|x <- [1,2,3]]

sHift                       :: Int -> Char -> Char 
sHift   n c | isLower c     = int2low ((low2int c + n) `mod`26)
            | isUpper c     = int2upp ((upp2int c + n) `mod`26)
            | otherwise     = c 

fReqs                       :: String -> [Float] 
fReqs   xs                  = [percent (count x xs') n | x <- ['a'..'z']]
                                where 
                                    xs' = map toLower xs 
                                    n   = letters xs

ins2rt 				:: Ord a => a->[a]->[a]
ins2rt x []			= [x] 
ins2rt x (y:ys) |x<=y		= x:y:ys
		|otherwise	= y:ins2rt x ys


------------------------------------------------------} 

