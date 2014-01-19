module Jan19 where 
-- :   set expandtab ts=4 ruler number spell 

-- Prelude> :i putStrLn 
-- putStrLn :: String -> IO () 	-- Defined in `System.IO'
main = putStrLn "Hello From Haskell" 
-- *Jan19> :i main 
-- main :: IO () 	-- Defined at 2014-0119-IO.hs:6:1
-- NOTE () stands for unit, Like void in C#. It's a place holder. 
data Unit = Unit    
{- IO is a parameterized type, with a type variable any type.
newtype IO a
  = GHC.Types.IO (GHC.Prim.State# GHC.Prim.RealWorld
                  -> (# GHC.Prim.State# GHC.Prim.RealWorld, a #))
  	-- Defined in `GHC.Types'
instance Monad IO -- Defined in `GHC.Base'
instance Functor IO -- Defined in `GHC.Base'
-}

-- IO ()
-- returns a Unit, an IO Action similar to a Maybe in that it could do something outside. 
-- the IO Action would have to be used in main to get anything to happen.  

