module Dec17 where 
-- import ListSot
-- import PrImEs
find'   k t   = [v | (k', v) <- t, k == k']
swap' (x,y)   = (y,x)
nList xs      = [if x `mod` 15 ==0  then "fbz" else if x `mod` 5 == 0 then "bz" else if x  `mod` 3 == 0 then "fz" else  "o" | x <- xs ]
zzzs          = zip (nList (reverse[1..100])) (reverse[1..100])
zzzsr         = zip (reverse[1..100]) (nList (reverse[1..100]))
rzzzs         = reverse zzzs 
rzzzsr        = reverse zzzsr
firsts ps           = [x| (x,_)<- ps]
seconds ps          = [y| (_,y)<-ps]
oTups = [ (y,x) | (x,y)  <-zzzs, x =="o"]
strTups = zip (firsts zzzs)  [show x|x <-(seconds zzzs)] -- strTups :: [([Char], String)] need to change [Char] -> String so that the Tup is [(String),(String)] or I should change String so that it reads [([Char],[Char])].

















{-

let strTups = zip (firsts zzzs)  [show x|x <-(seconds zzzs)]
 
let oTups = [ (y,x) | (x,y)  <-zzzs, x =="o"]

[ (y,x) | (x,y)  <-zzzs, x =="o"]


an if clause that returns identitiy and a branch that returns "fbz"? 

[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] 


-} 
