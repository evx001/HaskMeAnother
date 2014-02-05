module Jan6 where

import Data.List -- for Data.List.generics
r2pliKate :: Int -> a -> [a]
r2pliKate y x = [take x [y]|[y] <-repeat y]
-- r2pliKate x = take x [x|x <-repeat x]
-- r2pliKate x = [(x:[])|take x [y] repeat x ]
-- repLica x = genericTake x repeat x 
-- genericLength :: Num i => [b] -> i
-- genericDrop       
-- genericIndex      
-- genericLength     
-- genericReplicate  
-- genericSplitAt    
-- genericTake
-- repLica x = [(x:[])|x <- repeat x ]
-- replicate :: Int -> a -> [a]
-- :show bindings              show the current bindings made at the prompt 
-- :{\n ..lines.. \n:}\n       multiline command
-- l2ngth :: Num a => [t] -> a 
-- l2ngth xs = sum[1|_<-xs] 
-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- tail :: [a] -> [a]
-- reverse :: [a] -> [a]
-- repeat :: a -> [a]
-- all :: (a -> Bool) -> [a] -> Bool
-- (!!) :: [a] -> Int -> a
-- concat :: [[a]] -> [a]
-- cycle :: [a] -> [a]
-- drop :: Int -> [a] -> [a]
-- dropWhile :: (a -> Bool) -> [a] -> [a]
-- head :: [a] -> a
-- iterate :: (a -> a) -> a -> [a]
-- length :: [a] -> Int
-- last :: [a] -> a
