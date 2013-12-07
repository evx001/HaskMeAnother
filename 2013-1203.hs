module Dec3 where  
-- cabal install cabal-install
-- in testing zero or null case and the ones case are the edges we might want to test
      import          PrImEs 
      import          Test.QuickCheck
-- import          FindAvTruPrimes 

 
-- no error here because they are NOT interacting. 
-- medianOf3Num t0 t1 t2   =  [(sum[t0,t1,t2]),(length[t0,t1,t2])]

-- medianOf3Num t t1 t2  = [x `div` y | x <-(sum[t,t1,t2]), y <-(length[t,t1,t2])]  

{- <interactive>:105:67:
    Couldn't match expected type `[t0]' with actual type `Int'
    In the return type of a call of `length'
    In the expression: (length [t, t1, t2])
    In a stmt of a list comprehension: y <- (length [t, t1, t2]) -} 

-- so do I redefine length' to be derived from Integer Type Class?
--                  was able to make length' = length. 
--    lengthx :: [a] -> Integer 
--    lengthx           = length               
      medianOf3Num t0 t1 t2   =  [(sum[t0,t1,t2]),(length[t0,t1,t2])]
      averagex n        = div (sum n) (length n) 
--      lengthx           = foldl (\n _ -> n + 1) 

--      averagex n        = div (sum n) (length n)
--      medianOf3Num t t1 t2  = [x `div` y | x <-(sum[t,t1,t2]), y <-(length[t,t1,t2])]

-- failed   average           :: [Integer] -> Integer


    
   
        
    
