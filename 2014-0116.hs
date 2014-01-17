{-# LANGUAGE NPlusKPatterns #-}
module Jan16 where
-- ghci -XNPlusKPatterns
import qualified Data.List as D -- for genericLength etc. to be used as D.genericLength
-- import GHC.Base
-- import Data.Char 

{- thirty first day of continuous Haskell -} 


divBy10 :: Double -> Double
divBy10 = (/10)
divBy10i :: Integer -> Integer
divBy10i  = (div 10) 
