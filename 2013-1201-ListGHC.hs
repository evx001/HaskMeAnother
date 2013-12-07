ghci>:browse Data.Tuple
curry :: ((a, b) -> c) -> a -> b -> c
fst :: (a, b) -> a
snd :: (a, b) -> b
Data.Tuple.swap :: (a, b) -> (b, a)
uncurry :: (a -> b -> c) -> (a, b) -> c
----------------------------------------------------------
ghci>:browse GHC.List
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
