module SortQuick where 

sortQuick               :: (Ord a) => [a] -> [a] 
sortQuick []            = []
sortQuick (x:xs)        =  
	                let     smallOrEqual 	=	[a | a <- xs, a <= x] 
		                larger		=       [a | a <- xs, a > x]
	                in	sortQuick smallerOrEqual ++ [x] ++ sortQuick larger   
