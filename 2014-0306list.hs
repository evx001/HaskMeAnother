module Lists where 


-- ASSIGNMENT -- 
x = [1,2,3]
y = [1..11] 


-- ========
-- Prelude>  let x = [1,2,3];
-- Prelude> x
-- [1,2,3]
-- Prelude> x == (1:(2:(3:[])))
-- True
-- Prelude> (++) x [4,5] == (1:(2:(3:[]))) ++ (4:(5:[]))
-- True 

-- Prelude> head (tail [1,2,3,4])
-- 2
-- 
-- Prelude> null []
-- True
-- 
-- Prelude> null [0]
-- False

double nums = 
	if null nums 
    then [] 
    else (2 * (head nums)) : (double (tail nums))

-- *Lists> double [1..11]
-- [2,4,6,8,10,12,14,16,18,20,22]

-- functions on lists are usually recursive 

removeOdd nums = 
    if null nums 
    then [] 
    else 
        if (mod (head nums) 2) == 0  
        then (head nums) : (removeOdd (tail nums)) 
        else removeOdd (tail nums) 

-- *Lists> removeOdd [1..11]
-- [2,4,6,8,10]


 
-- *Lists> 1: x
-- [1,1,2,3]
-- *Lists> x
-- [1,2,3]
-- *Lists> 1: x
-- [1,1,2,3]
-- *Lists> x
-- [1,2,3]
-- *Lists> x ++ y
-- [1,2,3,1,2,3,4,5,6,7,8,9,10,11]
-- *Lists> zip x y
-- [(1,1),(2,2),(3,3)] 
--    
