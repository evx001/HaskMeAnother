module Ch3Prob where 
{--------------1----------------

['a','b','c']
('a','b','c')
[(False,`O`),(True,'1')]	-- :: [(Bool, Char)]
([False,True],['0','1']) 	-- :: ([Bool],[Char])
[tail,init,reverse] 		-- :: [[a] -> [a]]

---------------2---------------}

second xs 		= head(tail xs) 	-- :: [a] -> a 
swap :: (a,b) -> (b,a)
swap  (x,y)		= (y,x)				-- :: (a,b) -> (b,a)  
pair x y 		= (x,y) 			-- :: a -> b -> (a,b)
double x 		= x * 2 
palindrome xs 	= reverse xs == xs  -- :: 
twice f x 		= f (f x) 

-- note class constraints 

{----------------4----------------
Functions equivalence and the equality type class 

-} 
 