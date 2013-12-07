module ListSort where

  listSort []     = []
  listSort (x:xs) = (listSort mIn ++ [x] ++ listSort mAx) 
                where 
                   mIn  = [a| a <- xs, a <= x]
                   mAx  = [b| b <- xs, b > x]
                 
