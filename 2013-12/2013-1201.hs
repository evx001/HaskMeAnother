module Nov30 where
-- cabal install cabal-install
-- in testing zero or null case and the ones case are the edges we might want to test

    import          Test.QuickCheck
--import          FindAvTruPrimes 

{- local definitions 
        a.k.a. defining functions 
        how do these fit with Data types 
        Design prefigures code. 
   
   statement of the problem 
        return the middle of three numbers.
        state another way the median of three numbers.  

ghci>:i []
data [] a = [] | a : [a]        -- Defined in `GHC.Types'
instance Eq a => Eq [a] -- Defined in `GHC.Classes'
instance Monad [] -- Defined in `GHC.Base'
instance Functor [] -- Defined in `GHC.Base'
instance Ord a => Ord [a] -- Defined in `GHC.Classes'
instance Read a => Read [a] -- Defined in `GHC.Read'
instance Show a => Show [a] -- Defined in `GHC.Show'

ghci>:i sum
sum :: Num a => [a] -> a        -- Defined in `Data.List'

ghci>:i length
length :: [a] -> Int    -- Defined in `GHC.List'

-} 
 
-- no error here because they are NOT interacting. 
-- medianOf3Num t0 t1 t2   =  [(sum[t0,t1,t2]),(length[t0,t1,t2])]

-- medianOf3Num t t1 t2  = [x `div` y | x <-(sum[t,t1,t2]), y <-(length[t,t1,t2])]  

{- <interactive>:105:67:
    Couldn't match expected type `[t0]' with actual type `Int'
    In the return type of a call of `length'
    In the expression: (length [t, t1, t2])
    In a stmt of a list comprehension: y <- (length [t, t1, t2]) -} 

-- so do I redefine length to be derived from Integer Type Class? 
    average         :: [Integer] -> Integer
    average ns      = div (sum ns) (length ns)



    
   
        
    
