module Dec30 where 
-- http://vimeo.com/72870631
-- 4.8.2.a 
{- -------------------------------
-- safetail  as prelude-last except don't choke on [] empty set.
a -- as a conditional 
b -- as guarded
c -- pattern matched 
---------------------------------}  
-- 4.8.2.a --
-- safetail :: [a] -> [a] 
-- safetail :: (Eq t, Num t) => [t] -> [t]
-- safetail [xs] = if null [xs] then [] else [1]
safetail xs = if xs==[] then []  else if [x] then [x] else if (_:xs) then safetail xs else xs        



{------------------------------------ 
 - 4.8.2.c 
 - safetail as pattern matching 
safetail :: [a] -> [a]
safetail    []          = [] 
-- safetail    [x]         = [x]
safetail    (_:xs)      = safetail xs

-- note that the type signature borrowed from last which I first used was too restrictive because it prevented the [] set from being an acceptable value. 
-- solution had to do with x in the second def changed to [x]  
-- what if we just wanted the value and not the value incased in a list. 




--
-- safetail  :: [t] -> [a]  
--  last :: [a] -> a
safetail xs          = last xs 
                        where 
                            xs == []    = []

-- 4.8.2.b -- 

safetail   xs 

            (_:xs)      = safetail x



--------------------------------------} 
