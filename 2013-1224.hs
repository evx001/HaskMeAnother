module Dec24 where 

-- 4.1 -- renaming fuctions ---- 
iSDigit c               = c >= '0' && c <= '9' 

-- 4.2 -- Conditionals ---------
aBs n                   = if n >= 0 then n else - n 

sigNum n                = if n <0 then -1 else 
                           if n == 0 then 0 else 1   
-- 4.3 -- Guards ---------------
aBS n | n >= 0          = n 
      | otherwise       = -n 

sIgnum n | n < 0        = -1 
         | n == 0       = 0
         | otherwise    = 1  
-- another guard example -- 

swap' (x,y)                         = (y,x)
nList x  | x `mod` 15   == 0        = "fbz" 
         | x `mod` 5    == 0        = "bz" 
         | x `mod` 3    == 0        = "fz" 
         | otherwise                = "o" 

-- guard that decides if x is divisible by 5 and/or 3 and prints result
-- would like to feed it a list. 

{- 

 
zzzs          = zip (nList (reverse[1..100])) (reverse[1..100])
firsts ps           = [x| (x,_)<- ps]
seconds ps          = [y| (_,y)<-ps]
strTups :: [([Char],[Char])] 
strTups = zip (firsts zzzs)  [show x|x <-(seconds zzzs)] 
oTups = [ (y,x) | (x,y)  <-strTups, x =="o"]
fbzMix =  [if fst (x,y)=="o" then swap'(x,y)else (x,y) | (x,y) <-strTups ] 
fbzMixR = reverse (firsts fbzMix) 
-}
 
