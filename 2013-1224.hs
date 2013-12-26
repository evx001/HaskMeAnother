module Dec24 where 
 
-- 4.1 -- renaming fuctions ---- 
iSDigit c               = c >= '0' && c <= '9' 

-- 4.2 -- Conditionals ---------
aBs n                   = if n >= 0 then n else - n 

sigNum n                = if n <0 then -1 else 
                           if n == 0 then 0 else 1   
-- 4.3 -- Guards ---------------
aBS n       | n >= 0                = n 
            | otherwise             = -n 

sIgnum n    | n < 0                 = -1 
            | n == 0                = 0
            | otherwise             = 1  
-- another guard example -- 


nList x  | x `mod` 15   == 0        = "fbz" 
         | x `mod` 5    == 0        = "bz" 
         | x `mod` 3    == 0        = "fz" 
         | otherwise                = "o"  
-- 4.4 -- Pattern Matchting ----


