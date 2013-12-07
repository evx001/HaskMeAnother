module Nov17 where  

-- cardinal numbers for position 
-- ordinal  numbers for order 
-- axioms  =   formal
--             rules 
--             for
--             numbers
-- 

--   pred 0   = 0
--   pred (n + 1) = n 
{-
   test              :: [Char] -> Bool 
   test  ('a' : _)   =  True
   test _            =  False 
-}

--   blah = \x -> x + x
--
   odds n   = map f [0..n - 1] 
               where f x = x * 2 + 1

   odds' n = map (\x -> x * 2 +1 ) [0..n - 1]
 
