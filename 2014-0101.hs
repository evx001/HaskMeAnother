module Jan01	where

safetail xs = div' (genericLength  (safetail xs))2    

-- safetail xs = if xs==[] then []  else if div (length (safetail xs))2 == 0 then div (length (safetail xs))2 else if div (length (safetail xs))2 /= 0 then [0] else [0] 
{-
genericLength           :: (Num i) => [b] -> i
genericLength []        =  0
genericLength (_:l)     =  1 + genericLength l
div' :: (Real a,Integral b) => a -> a -> b
div' n d = floor ((toRational n) / (toRational d))
-} 

