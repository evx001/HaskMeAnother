{-# LANGUAGE NoMonomorphismRestriction #-} 
-- module NovNine where
-- Three things to be pleased with Haskell about . . . 
-- 	can it be the same three things from another time or some combination of? 
-- 		yes why not as these things are not static and may be subject to change
-- I was happy that I was able to make the module load that had FuncEquiv load though 
-- 		I am unsure as to why the indentation of the functions made them work. 
    abs'     :: Int -> Int 
    abs' n   =  if n >= 0 then n else - n 
    
    -- signum'   ::  Int -> Int 
    signum' n  =   if n < 0 then - 1 else 
                    if n == 0 then 0 else 1 


