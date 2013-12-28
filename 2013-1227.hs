module Dec27 where 
-- to install GHC 7.6.3 or just leave it for now? 
-- I installed it plus yesod and scotty, they both run. =) 

-- 4.4 -- Pattern-Matches --
nOt 	                        :: Bool -> Bool 
nOt False                       = True 
nOt True                        = False	
conjunk :: Bool -> Bool -> Bool 
conjunk x y |True  && True      = True  
            |otherwise          = False 


-- note that laziness means that nothing gets evaluated until it has to.

fSt :: (t1,t2) -> t1 
fSt (t1,t2)     = t1 
sNd :: (t1,t2) -> t2 
sNd (t1,t2)     = t2 




{-
conJunk (b,c)| b && c     = b
             | otherwise  = False 
-}               

