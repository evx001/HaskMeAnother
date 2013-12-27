module Dec10 where
-- import PrImEs 
{-
swap (a,b) = (b,a)
-- [product  [y,x,z,u] |x <-odds' 11,y <- primes 101, z <-[0..3], u <- [1..9]]
dada0           = [zip ["fz","bz","fbz"] [fz,bz,fbz] | fbz <- [15,30..90], bz <-[5,10..100], fz <- [3,6..99]]

dada1           = [zip   ["fz"] [fz]|fz <-[3,6..99]]
dada2           = [zip   ["bz"] [bz]|bz <-[5,10..100]]
dada3           = [zip   ["fbz"] [fbz]|fbz <-[15,30..90]]
dada4           = dada1 ++ dada2 ++ dada3  
-- concat dada4
{-*Dec10> let dada5 = concat dada4
(0.00 secs, 0 bytes)
 -*Dec10> find "fz" dada5
[3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99]
(0.02 secs, 519472 bytes)
*Dec10> find "bz" dada5
[5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]
(0.02 secs, 1036660 bytes)
*Dec10> find "fbz" dada5
[15,30,45,60,75,90]
 - *Dec10> concat dada4
[("fz",3),("fz",6),("fz",9),("fz",12),("fz",15),("fz",18),("fz",21),("fz",24),("fz",27),("fz",30),("fz",33),("fz",36),("
fz",39),("fz",42),("fz",45),("fz",48),("fz",51),("fz",54),("fz",57),("fz",60),("fz",63),("fz",66),("fz",69),("fz",72),("
fz",75),("fz",78),("fz",81),("fz",84),("fz",87),("fz",90),("fz",93),("fz",96),("fz",99),("bz",5),("bz",10),("bz",15),("b
z",20),("bz",25),("bz",30),("bz",35),("bz",40),("bz",45),("bz",50),("bz",55),("bz",60),("bz",65),("bz",70),("bz",75),("b
z",80),("bz",85),("bz",90),("bz",95),("bz",100),("fbz",15),("fbz",30),("fbz",45),("fbz",60),("fbz",75),("fbz",90)]
*Dec10> seconds (concat dada4)
[3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,5,10,15,20,25,30,35,40,
45,50,55,60,65,70,75,80,85,90,95,100,15,30,45,60,75,90]
-}
firsts ps       = [x| (x,_)<- ps]

seconds ps      = [y| (_,y)<-ps]


find k t        = [v|(k', v) <- t, k == k'] 

find' k t       = head[v|(k',v) <- t, k == k']
  
positions x xs  = [i|(x',i)<- zip xs [0..n], x == x'] 
                where n = length xs - 1 

factors     n   = [x|x <- [1..n],n `mod` x == 0]
factrList   n   = zip [1..n][factors n | n  <-[1..n]]   
-}
fbz             = if (n `mod` 15) == 0 then "fbz" else [1..100] 
{-
bz  n           = if (n `mod` 5) == 0 then "bz" else fz
fz  n           = if (n `mod` 3) == 0 then "fz" else [1..100]  
-}




{-- 
 - [("2006",352),(]


-- import PrImEs 
------------------------------------------
flatten                 :: Tree -> [Int] 
flatten (Leaf n)        = [n] 
flatten (Node l n r)    = flatten ++ [n] ++ flatten r  

compose = foldr (.) id

--odds'           :: Int -> [Int] 
odds'   n       = map f [ 0..n-1] 
                  where f x = x * 2 + 1    
odds''  n       = map(\x -> x * 2 + 1)[0..n -1] 
----------------}
