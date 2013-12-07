module Dec5 where 
import ListSort
-- import Data.Permute
-- no sale 
swap (a,b) = (b,a) 
-- let 
perennials = [("C",[1,2,1,1]),("Java",[2,1,4,0]),("Objective_C",[3,38,0,0]),("C++",[4,3,2,6]),("C#",[5,7,0,0]),("PHP",[6,5,0,0]),("Visual_Basic",[7,4,5,5]),("Python",[8,6,29,0]),("Transact_SQL",[9,45,0,0]),("JavaScript",[10,10,14,0]),("Lisp",[15,21,17,3]),("COBOL",[19,17,3,12]),("Ada",[22,23,18,2])]

revPerennials = [swap (perennials!!n) | n <- [0..12]]
{-

*Dec5> maximum revPerennials
([22,23,18,2],"Ada")
*Dec5> minimum revPerennials
([1,2,1,1],"C")

 
let RevPerennials =[([1,2,1,1],"C"),([2,1,4,0],"Java"),([3,38,0,0],"Objective_C"),([4,3,2,6],"C++"),([5,7,0,0],"C#"),([6,5,0,0],"PHP"),([7,
4,5,5],"Visual_Basic"),([8,6,29,0],"Python"),([9,45,0,0],"Transact_SQL"),([10,10,14,0],"JavaScript"),([15,21,17,3],"Lisp
"),([19,17,3,12],"COBOL"),([22,23,18,2],"Ada")]

maximum[swap (perennials!!n) | n <- [0..12]]
([22,23,18,2],"Ada")

minimum[swap (perennials!!n) | n <- [0..12]]
([1,2,1,1],"C")


{- *Dec5> swap (perennials!!0)
    ([1,2,1,1],"C") 
    -}
-- perennials!!0 -- > ("C",[1,2,1,1])
-- perennials!!1 -- > ("Java",[2,1,4,0])
-- snd (perennials!!1)-- > [2,1,4,0]
-- fst (perennials!!1)-- > "Java"
-- ?? snd (perennials!!n)
-- ?? dada1 =([]:[x|x <- sum snd (perennials!![0..12])
-- dada2 =([]:[x|x <- sum snd (perennials!![0..12])
-- ?? swap (perennials!!n)
-- ?? popper n = swap (perennials!!n) 
-- ?? let popper [n] = swap (perennials!!n)
-- 
(if odd ((length perennials)+0) then ((length perennials)-1) else (length perennials))

if (drop n  perennials) == [] then [] else (drop n-1 perennials)

---------------Data.Tuple
curry :: ((a, b) -> c) -> a -> b -> c
fst :: (a, b) -> a
snd :: (a, b) -> b
Data.Tuple.swap :: (a, b) -> (b, a)
uncurry :: (a -> b -> c) -> (a, b) -> c
-------------GHC.List---------------------
(!!) :: [a] -> Int -> a
all :: (a -> Bool) -> [a] -> Bool
and :: [Bool] -> Bool
any :: (a -> Bool) -> [a] -> Bool
break :: (a -> Bool) -> [a] -> ([a], [a])
concat :: [[a]] -> [a]
concatMap :: (a -> [b]) -> [a] -> [b]
cycle :: [a] -> [a]
drop :: Int -> [a] -> [a]
dropWhile :: (a -> Bool) -> [a] -> [a]
elem :: Eq a => a -> [a] -> Bool
GHC.List.errorEmptyList :: String -> a
filter :: (a -> Bool) -> [a] -> [a]
foldl :: (a -> b -> a) -> a -> [b] -> a
foldr1 :: (a -> a -> a) -> [a] -> a
head :: [a] -> a
init :: [a] -> [a]
iterate :: (a -> a) -> a -> [a]
last :: [a] -> a
length :: [a] -> Int
lookup :: Eq a => a -> [(a, b)] -> Maybe b
notElem :: Eq a => a -> [a] -> Bool
null :: [a] -> Bool
or :: [Bool] -> Bool
repeat :: a -> [a]
replicate :: Int -> a -> [a]
reverse :: [a] -> [a]
scanl :: (a -> b -> a) -> a -> [b] -> [a]
scanl1 :: (a -> a -> a) -> [a] -> [a]
scanr :: (a -> b -> b) -> b -> [a] -> [b]
scanr1 :: (a -> a -> a) -> [a] -> [a]
span :: (a -> Bool) -> [a] -> ([a], [a])
splitAt :: Int -> [a] -> ([a], [a])
tail :: [a] -> [a]
take :: Int -> [a] -> [a]
GHC.List.takeUInt_append :: GHC.Prim.Int# -> [b] -> [b] -> [b]
takeWhile :: (a -> Bool) -> [a] -> [a]
unzip :: [(a, b)] -> ([a], [b])
unzip3 :: [(a, b, c)] -> ([a], [b], [c])
zip :: [a] -> [b] -> [(a, b)]
zip3 :: [a] -> [b] -> [c] -> [(a, b, c)]
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith3 :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
(++) :: [a] -> [a] -> [a]
foldr :: (a -> b -> b) -> b -> [a] -> b
map :: (a -> b) -> [a] -> [b]
-}