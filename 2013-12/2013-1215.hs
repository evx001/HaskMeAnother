module Dec15 where 
import ListSort

factors   n = [x|x <- [1..n], n `mod` x == 0]

--          where testx       = 
nList       = (reverse [1..100])
list15s     = (reverse [15,30..90])
list5s      = (reverse [5,10..100])
list3s      = (reverse [3,6..99])

xlist       = [list15s,list5s,list3s,nList]
xlistx      = concat [list15s,list5s,list3s,nList]


-- ((length list5s)-1)

{------------------------------------------------
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
