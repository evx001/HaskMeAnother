module A_verse_t where

{- t verses a as a type designation. 
 - does t get used when were are working with tuples ? -} 

pair :: t -> t1 -> (t, t1)
-- or as in this case --
twice :: (t -> t) -> t -> t 
-- verses --
palindrome :: Eq a => [a] -> Bool
-- or this --
(+) :: Num a => a -> a -> a

