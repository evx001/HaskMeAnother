module Dec14 where
import ListSort


pair       a b            = (a,b)
swap       (a,b)          = (b,a)
list3s = [5,10..100]    -- ((length list3s)-1)
list5s = [3,6..99]      -- ((length list5s)-1)
list15s = [15,30..90]   -- ((length list15s)-1)

nList 		 = reverse [1..100]

{-
[pair(nList!!n)|n<-[0..99]]
 
factors          = [x| x  <- nList, nList `mod` x == 0]

listCheck []     = []
listCheck (x:xs) = (nList minimum  ++ [x] ++ nList maximum) 
                where 
                   ztest15 = [a| a <- xs, a <= x]
                   ztest5  = [b| b <- xs, b > x]
                   ztest3  = [c| c <- xs, c == x]
                   ztest0  = [d] d <- xs, d == x] -}
