module Dec13 where
import ListSort
import PrImEs


find' k t 	= [v|(k', v) <- t, k == k'] 
nList 			= reverse [1..100]
test15 			= [x `mod`15==0  |x <-nList]
test5		  	= [x `mod`5==0  |x <-nList]
test3			  = [x `mod`3==0  |x <-nList]
ztest15			= zip [(reverse test15)!!n | n <-[0..99]] [1..100]
ztest5			= zip [(reverse test5)!!n | n <-[0..99]] [1..100]
ztest3			= zip [(reverse test3)!!n | n <-[0..99]] [1..100]
ztests 			= concat [ztest15,ztest5,ztest3]

firsts   ps = [x| (x,_)<- ps]
seconds  ps = [y| (_,y)<-ps]




pair a b    = (a,b)
swap (a,b)  = (b,a) 
{------------------------------------------------------
-- import Data.Set

dada1               = [zip   ["fz"] [fz]|fz <-[3,6..99]]
dada2               = [zip   ["bz"] [bz]|bz <-[5,10..100]]
dada3               = [zip   ["fbz"] [fbz]|fbz <-[15,30..90]]
dada4               = concat(dada1 ++ dada2 ++ dada3)
dada5               = [pair x y| x <-[0..100], y <-["o"]]
		 
revDada4   	    = [(swap (dada4!!n))| n <-[1..58]]




fbzList             = listSort (seconds dada4)   





--------------------------------------------------------}
