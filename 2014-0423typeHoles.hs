-- TypeHoles 

-- controlling type errors -- 
-- type errors don't make sense so TypeHoles makes it more comprehend 
-- type inference is usually helpful 
	
blah s i = _ somefun s s i i 
	
-- if finds hole (String -> String -> Int -> Int -> IO) 


-- filling in explicit types even when they can be inferred 

-- _ . 

	
