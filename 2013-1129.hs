module Nov29 where 
-- preplexed as to why I can't just load "findavprimes" because primes.hs does load fine. 
    import PrImEs 
    import Test.QuickCheck 
{- 
 - Prelude> :browse Data.List
(Data.List.\\) :: Eq a => [a] -> [a] -> [a]
Data.List.delete :: Eq a => a -> [a] -> [a]
Data.List.deleteBy :: (a -> a -> Bool) -> a -> [a] -> [a]
Data.List.deleteFirstsBy :: (a -> a -> Bool) -> [a] -> [a] -> [a]
Data.List.dropWhileEnd :: (a -> Bool) -> [a] -> [a]
Data.List.elemIndex :: Eq a => a -> [a] -> Maybe Int
Data.List.elemIndices :: Eq a => a -> [a] -> [Int]
Data.List.find :: (a -> Bool) -> [a] -> Maybe a
Data.List.findIndex :: (a -> Bool) -> [a] -> Maybe Int
Data.List.findIndices :: (a -> Bool) -> [a] -> [Int]
Data.List.foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl1 :: (a -> a -> a) -> [a] -> a
Data.List.foldl1' :: (a -> a -> a) -> [a] -> a
Data.List.genericDrop :: Integral i => i -> [a] -> [a]
Data.List.genericIndex :: Integral a => [b] -> a -> b
Data.List.genericLength :: Num i => [b] -> i
Data.List.genericReplicate :: Integral i => i -> a -> [a]
Data.List.genericSplitAt :: Integral i => i -> [b] -> ([b], [b])
Data.List.genericTake :: Integral i => i -> [a] -> [a]
Data.List.group :: Eq a => [a] -> [[a]]
Data.List.groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
Data.List.inits :: [a] -> [[a]]
Data.List.insert :: Ord a => a -> [a] -> [a]
Data.List.insertBy :: (a -> a -> Ordering) -> a -> [a] -> [a]
Data.List.intercalate :: [a] -> [[a]] -> [a]
Data.List.intersect :: Eq a => [a] -> [a] -> [a]
Data.List.intersectBy :: (a -> a -> Bool) -> [a] -> [a] -> [a]
Data.List.intersperse :: a -> [a] -> [a]
Data.List.isInfixOf :: Eq a => [a] -> [a] -> Bool
Data.List.isPrefixOf :: Eq a => [a] -> [a] -> Bool
Data.List.isSuffixOf :: Eq a => [a] -> [a] -> Bool
lines :: String -> [String]
Data.List.mapAccumL ::
  (acc -> x -> (acc, y)) -> acc -> [x] -> (acc, [y])
Data.List.mapAccumR ::
  (acc -> x -> (acc, y)) -> acc -> [x] -> (acc, [y])
maximum :: Ord a => [a] -> a
Data.List.maximumBy :: (a -> a -> Ordering) -> [a] -> a
minimum :: Ord a => [a] -> a
Data.List.minimumBy :: (a -> a -> Ordering) -> [a] -> a
Data.List.nub :: Eq a => [a] -> [a]
Data.List.nubBy :: (a -> a -> Bool) -> [a] -> [a]
Data.List.partition :: (a -> Bool) -> [a] -> ([a], [a])
Data.List.permutations :: [a] -> [[a]]
product :: Num a => [a] -> a
Data.List.sort :: Ord a => [a] -> [a]
Data.List.sortBy :: (a -> a -> Ordering) -> [a] -> [a]
Data.List.stripPrefix :: Eq a => [a] -> [a] -> Maybe [a]
Data.List.subsequences :: [a] -> [[a]]
sum :: Num a => [a] -> a
Data.List.tails :: [a] -> [[a]]
Data.List.transpose :: [[a]] -> [[a]]
Data.List.unfoldr :: (b -> Maybe (a, b)) -> b -> [a]
Data.List.union :: Eq a => [a] -> [a] -> [a]
Data.List.unionBy :: (a -> a -> Bool) -> [a] -> [a] -> [a]
unlines :: [String] -> String
unwords :: [String] -> String
Data.List.unzip4 :: [(a, b, c, d)] -> ([a], [b], [c], [d])
Data.List.unzip5 :: [(a, b, c, d, e)] -> ([a], [b], [c], [d], [e])
Data.List.unzip6 ::
  [(a, b, c, d, e, f)] -> ([a], [b], [c], [d], [e], [f])
Data.List.unzip7 ::
  [(a, b, c, d, e, f, g)] -> ([a], [b], [c], [d], [e], [f], [g])
words :: String -> [String]
Data.List.zip4 :: [a] -> [b] -> [c] -> [d] -> [(a, b, c, d)]
Data.List.zip5 ::
  [a] -> [b] -> [c] -> [d] -> [e] -> [(a, b, c, d, e)]
Data.List.zip6 ::
  [a] -> [b] -> [c] -> [d] -> [e] -> [f] -> [(a, b, c, d, e, f)]
Data.List.zip7 ::
  [a]
  -> [b]
  -> [c]
  -> [d]
  -> [e]
  -> [f]
  -> [g]
  -> [(a, b, c, d, e, f, g)]
Data.List.zipWith4 ::
  (a -> b -> c -> d -> e) -> [a] -> [b] -> [c] -> [d] -> [e]
Data.List.zipWith5 ::
  (a -> b -> c -> d -> e -> f)
  -> [a] -> [b] -> [c] -> [d] -> [e] -> [f]
Data.List.zipWith6 ::
  (a -> b -> c -> d -> e -> f -> g)
  -> [a] -> [b] -> [c] -> [d] -> [e] -> [f] -> [g]
Data.List.zipWith7 ::
  (a -> b -> c -> d -> e -> f -> g -> h)
  -> [a] -> [b] -> [c] -> [d] -> [e] -> [f] -> [g] -> [h]
(!!) :: [a] -> Int -> a
(++) :: [a] -> [a] -> [a]
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
filter :: (a -> Bool) -> [a] -> [a]
foldl :: (a -> b -> a) -> a -> [b] -> a
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr1 :: (a -> a -> a) -> [a] -> a
head :: [a] -> a
init :: [a] -> [a]
iterate :: (a -> a) -> a -> [a]
last :: [a] -> a
length :: [a] -> Int
lookup :: Eq a => a -> [(a, b)] -> Maybe b
map :: (a -> b) -> [a] -> [b]
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
takeWhile :: (a -> Bool) -> [a] -> [a]
unzip :: [(a, b)] -> ([a], [b])
unzip3 :: [(a, b, c)] -> ([a], [b], [c])
zip :: [a] -> [b] -> [(a, b)]
zip3 :: [a] -> [b] -> [c] -> [(a, b, c)]
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith3 :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
------------------------------------------------------------------------------
--
        
