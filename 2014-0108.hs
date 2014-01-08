module Jan8 where 
import GHC.Base
import GHC.Char
import Data.List
-- working getting the exercises from chap 5 to compile
-- currently there are many name collisions 
-- loaded Data.List so I could have GenericLength
-- [1 of 1] Compiling Ch5examp2        ( ch5examp2.hs, interpreted )

{-5examp2.hs:203:54: -- this one still vexes me 
    Couldn't match expected type `Integer' with actual type `Int'
    In the second argument of `percent', namely `n'
    In the expression: percent (count x xs') n
    In the expression: [percent (count x xs') n | x <- ['a' .. 'z']]-}

-- so plan is pull out the parts of the longer program that are choking it

-- percent has an integer in it, I could make another named percent specifically for the Int requirement in the piece.
table :: [ Float ] 

table = [ 8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4,6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1 ]
percent :: Fractional a => Integer -> Integer -> a
percent n m =(fromInteger n / fromInteger m) * 100
fr2qs xs = [percent (co5nt x xs) n | x <- ['a'..'z']] 
             where n = lowers xs


co5nt x xs = l2ngth[x'|x'<-xs,x==x']


l2ngth :: Num a => [t] -> a 
l2ngth xs = sum[1|_<-xs] --  "_<-xs" simply serves as a ones generator, here.

lowers xs =l2ngth[x | x <- xs, isLower x] 

isLower c = c >= 'a'&& c <= 'z' 


p2rcent         :: Fractional a => Integer -> Integer -> a
p2rcent n m     =(fromInteger n / fromInteger m) * 100
fr2Qs xs        = [p2rcent (co5nt x xs) n | x <- ['a'..'z']] 
                    where n = lowers xs
{-5examp2.hs:221:50:-- I solved this one with a missing x 
    Couldn't match expected type `Bool' with actual type `Char -> Bool'
    In the expression: isAlpha
    In a stmt of a list comprehension: isAlpha
    In the first argument of `length', namely `[x | x <- xs, isAlpha]'-}
count   x xs                = genericLength [x'|x' <- xs, x == x']

toLower                     :: Char -> Char 
toLower   c | isUpper c     = chr (ord c - ord 'A'+ ord 'a')
            | otherwise     = c 

sHift                       :: Int -> Char -> Char 
sHift   n c | isLower c     = int2low ((low2int c + n) `mod`26)
            | isUpper c     = int2upp ((upp2int c + n) `mod`26)
            | otherwise     = c 

fReqs                       :: String -> [Float] 
fReqs   xs                  = [percent (count x xs') n | x <- ['a'..'z']]
                                where 
                                    xs' = map toLower xs 
                                    n   = letters xs
 
low2int                     :: Char -> Int 
low2int c                   =  ord c - ord 'a' 

int2low                     :: Int -> Char 
int2low n                   = chr (ord 'a' + n)

upp2int                     :: Char -> Int 
upp2int c                   =  ord c - ord 'A'

int2upp                     :: Int -> Char
int2upp n                   = chr (ord 'A' + n) 

-- letters                     :: String -> Int 
letters xs                  = length [x|x <- xs, isAlpha x] 

isAlphaNum c= isAlpha c || isDigit c
isDigit c= c >= '0'&& c <= '9'
-- isLower c = c >= 'a'&& c <= 'z' -- see if  
isAlpha c = isLower c || isUpper c
isUpper c= c >= 'A'||c<='Z'
isSpace c= elem c "\t\n"