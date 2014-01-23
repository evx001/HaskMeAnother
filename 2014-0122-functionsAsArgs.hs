module FuncAsArg where 
import Test.QuickCheck
-- : set expandtab ts=4 ruler number spell

m1p f xs = [f x |x <-xs] 

prop_m1p f xs = m1p f xs == map f xs 
