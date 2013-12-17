module Dec16 where 
-- import ListSot
-- import PrImEs
find'   k t   = [v | (k', v) <- t, k == k']
swap' (x,y)   = (y,x)
nList xs      = [if x `mod` 15 ==0  then "fbz" else if x `mod` 5 == 0 then "bz" else if x  `mod` 3 == 0 then "fz" else  "o" | x <- xs ]
zzzs          = zip (nList (reverse[1..100])) (reverse[1..100])
zzzsr         = zip (reverse[1..100]) (nList (reverse[1..100]))
rzzzs         = reverse zzzs 
rzzzsr        = reverse zzzsr













{------------------------------------------------
factors   n = [x|x <- [1..n], n `mod` x == 0]

--          where testx       = 
nList       =  (reverse [1..100]) 
list15      =  [15,30..90] 
list5       =  [5,10..100] 
list3       =   [3,6..99] 
list15r     = (reverse [15,30..90])
list5r      = (reverse [5,10..100])
list3r      = (reverse [3,6..99])

xlist       = [list15r,list5r,list3r,nList]
xlistx      = concat [list15r,list5r,list3r,nList]


-- ((length list5s)-1)






let boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]


*Dec16> if (nList!!2) `mod` 15 ==0  then "fbz" else if (nList!!2) `mod` 5 == 0 then "bz" else if (nList!!2) `mod` 3 == 0 then "fz" else "o"



*Dec16> if (nList!!2) `mod` 15 ==0  then "fbz" else if (nList!!2) `mod` 5 == 0 then "bz" else if (nList!!2) `mod` 3 == 0
 then "fz" else "o"


*Dec16> if (nList!!0) `mod` 15 ==0  then "fbz" else if (nList!!0) 
"o"
*Dec16> if (list15r!!0) `mod` 15 ==0  then "fbz" else "o"
"fbz"
*Dec15> ((map (factors) (concat(xlist)))!!5)
[1,3,5,15]
*Dec15> ((map (factors) (concat(xlist)))!!6)
[1,2,4,5,10,20,25,50,100]

*Dec15> if elem 5 ((map (factors) (list3s))!!5) then "fbz" else "o"
"o"

*Dec15> if elem 5 ((map (factors) (list5s))!!0) then "fbz" else "o"
"fbz"

map (factors) (list15s)

map (factors) (concat(init xlist))


*Dec15> if ((mod 15 3) == 0) then "fbz" else "1"
"fbz"


map (+3) [1,6,3,2]
map (\x -> x + 3) [1,6,3,2]
*Dec15> ([list15s,list5s,list3s,nList]!!1)!!1
10

haskFizz [] = []
haskFizz xs 
      | 

haskFizz :: [a] -> [a] -> [a]
haskFizz nList 
    | fbz     = "fbz"
    | bz      = "bz"
    | fz      = "fz"   
    | otherwise = n
    where n = some function
          list15s = [15,30..90] 
          list5s = [5,10..100]
          list3s = [3,6..99] 

-------------------------------------------------}
