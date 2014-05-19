module Bang where 
{- 
type Families  
	type level functions 
	evaluation at compile time 
	--------------------
	via type synonyms 
	left hand gets eval -> 	right hand via substitutuion
		= is used as = in this instance 
		structural recursion 
		recursively calling on the tail of the list 
		a natural transformation 
			is posible 
				
1 ::  (Int,(Char,(Bool, ())))
1 = (1,('a',(True 

last' (a, ()) = a 
last' (a,(b,bs)) = last' (b,bs) 
last' :: (NonEmptyList 1) -> 1 -> ?? 

 	




-} 

