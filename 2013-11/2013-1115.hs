{-# LANGUAGE NoMonomorphismRestriction #-}
module LetFreq where 
{-
-- :set prompt ghci> 
-- :set guifont=Consolas 16
-- :set gfn=Consolas\ 16
-- :set expandtab 
-- :set ts=3  

letFreq         = [8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1] 
alphabet        = ['a'..'z']
zFreqAlphLet    = zip alphabet letFreq
{- [('a',8.2),('b',1.5),('c',2.8),('d',4.3),('e',12.7),('f',2.2),('g',2.0),('h',6.1),('i',7.0),
 - ('j',0.2),('k',0.8),('l',4.0),('m',2.4),('n',6.7),('o',7.5),('p',1.9),('q',0.1),('r',6.0),
 - ('s',6.3),('t',9.1),('u',2.8),('v',1.0),('w',2.4),('x',0.2),('y',2.0),('z',0.1)]
 -}
find k t = [v| (k',v)<- t, k == k']

-- to find vowels create a list of ['a','e','i','o','u'] map find over it. 
--
 --
        pred 0          = 0
        pred(n + 1)     = n  
-}
