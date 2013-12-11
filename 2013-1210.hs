module Dec10 where


odds'           :: Int -> [Int] 
odds'   n       = map f [ 0..n-1] 
                  where f x = x * 2 + 1    
odds''  n       = map(\x -> x * 2 + 1)[0..n -1] 







-- import PrImEs 
{-------------------------------------------
flatten                 :: Tree -> [Int] 
flatten (Leaf n)        = [n] 
flatten (Node l n r)    = flatten ++ [n] ++ flatten r  

compose = foldr (.) id
----------------}
