{-# LANGUAGE NPlusKPatterns #-}
module Jan15 where
-- ghci -XNPlusKPatterns
import qualified Data.List as D -- for genericLength etc. to be used as D.genericLength
-- import GHC.Base
-- import Data.Char 
-------------------------------------------------------------
pYths n           = [(x,y,z)|   x <- [1..n],
                                y <- [1..n],
                                z <- [1..n],
                                x ^ 2 + y^2 == z^2]

-- nested guards 
nestedConcat t1 t2 =  concat [[(x,y) | y <- [t1]]|x <- [t2]]
-- > nestedConcat [1..11] [1..7]
-- [([1,2,3,4,5,6,7],[1,2,3,4,5,6,7,8,9,10,11])]

{---------------------------------------------------------------- 
sHift                       :: Int -> Char -> Char 
sHift   n c | isLower c     = int2low ((low2int c + n) `mod`26)
            | isUpper c     = int2upp ((upp2int c + n) `mod`26)
            | otherwise     = c  

fReqs                       :: String -> [Float] 
fReqs   xs                  = [percent (count x xs') n | x <- ['a'..'z']]
                                where 
                                    xs' = map toLower xs 
                                    n   = letters xs
----------------------------------------------------------------}
ins2rt 				:: Ord a => a->[a]->[a]
ins2rt x []			= [x] 
ins2rt x (y:ys) |x<=y		= x:y:ys
		|otherwise	= y:ins2rt x ys

merge [] ys             = ys
merge xs []             = xs 
merge (x:xs) (y:ys)     = if x <= y then
                            x:merge xs (y:ys) 
                          else 
                            y:merge (x:xs) ys 


el2m :: Eq a => a -> [a] -> Bool 
el2m x []                   = False 
el2m x (y:ys)   | x==y      = True
                |otherwise  = el2m x ys 


------------------------------------------------------ 

