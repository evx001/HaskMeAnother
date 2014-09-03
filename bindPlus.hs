module BindPlus where 
{-
(>>=) :: m a -> (a -> m b) -> m b 
(>>=) (just 2) (\x -> return x) = 7 
(just 2) (\x -> >>= (Just 3) (\y -> return (x + y)
(>>=)fsquare  (\x -> bind google (1y -> return ( x ++ Y) 
fsquare >>= \x (google >>=  \y return (x ++ y)) 


(>>=) (Just 1) (\x -> >>= Nothing (\y -> return (x + y) ))  
-}

-- return2 :: a -> Maybe a; return2 x = Just x 
-- return2 x = x -> Maybe x 

