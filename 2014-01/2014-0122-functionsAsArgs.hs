module FuncAsArg where 
import Test.QuickCheck
-- : set expandtab ts=4 ruler number spell

m1p f xs = [f x |x <-xs] 

-- prop_m1p f xs = m1p f xs == map f xs 

f3lter p xs  = [ x | x <- xs, p x] 

filt2r p [] = [] 
filt2r p (x:xs)     | p x           = x : filt2r p xs 
                    | otherwise     = filt2r p xs 

prop_f3lt2r p xs = f3lter p xs == filt2r p xs 
{- 
 - *FuncAsArg> prop_f3lt2r odd [1..11]
Loading package array-0.4.0.1 ... linking ... done.
Loading package deepseq-1.3.0.1 ... linking ... done.
Loading package bytestring-0.10.0.2 ... linking ... done.
Loading package Win32-2.3.0.0 ... linking ... done.
Loading package old-locale-1.0.0.5 ... linking ... done.
Loading package time-1.4.0.1 ... linking ... done.
Loading package random-1.0.1.1 ... linking ... done.
Loading package containers-0.5.0.0 ... linking ... done.
Loading package pretty-1.1.1.0 ... linking ... done.
Loading package template-haskell ... linking ... done.
Loading package QuickCheck-2.6 ... linking ... done.
True
*FuncAsArg> prop_f3lt2r even [1..11]
True
-} 

