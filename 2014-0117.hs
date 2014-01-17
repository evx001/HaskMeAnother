module Jan17 where 
{-
pow2 n = 
    if n == 0 
    then 1 
    else 2 * (pow2(n-1)

-- *Jan17> pow2 5
-- 32

repeatStr str n = 
        if n == 0 
        then "" 
        else str ++ (repeatStr str (n-1)) 


-- for a better way to do it see the pattern match below.
double ns = 
    if null ns 
    then [] 
    else (2 * (head ns)) : (double (tail ns))

-- *Jan17> double [1..11] 
-- [2,4,6,8,10,12,14,16,18,20,22]


removeOdd ns = 
        if null ns 
        then [] 
        else 
            if (mod(head ns) 2) == 0 -- even ?
            then (head ns) : (removeOdd (tail ns))
            else removeOdd (tail ns) 
-- *Jan17> removeOdd [1..11] 
-- [2,4,6,8,10]
-}

-- Tuples 

headAndLength xs = (head xs, length xs) 
-- *Jan17> headAndLength [1..11] 
-- (1,11)

-- Tuples are usually accessed via pattern matching
-- Tuples bigger than (1,'Two','3',4) & Tuples passed across multiple parts of an app may be too fragile, then you want to seek out a custom data type.

-- PATTERN MATCHING 
-- fst function is a simple pattern match. 

null' []        = True
null' (x : xs)  = False 
-- *Jan17> null' []
-- True

double      []  = [] 
double (x : xs) = (2 * x) : (double xs) 
-- *Jan17> double [7,8]
-- [14,16]
 
-- GUARDS  
pow2 n 
    | n == 0            =1 
    | otherwise         =2 * (pow2 (n-1))
-- *Jan17> pow2 5
-- 32

removeOdd       [] = [] 
removeOdd   (x:xs)
        | mod x 2 == 0  = x : (removeOdd xs)
        | otherwise     = removeOdd xs 

-- *Jan17> removeOdd [1..11] 
-- [2,4,6,8,10]

-- CASE Expressions

double' ns  = case ns of 
    []      -> [] 
    (x :xs) -> (2 * x) : (double' xs) 
-- *Jan17> double' [1..11]
-- [2,4,6,8,10,12,14,16,18,20,22]

anyEven ns  = case (removeOdd ns) of 
    []      -> False
    (x:xs)  -> True

-- *Jan17> anyEven [1..11] 
-- True
-- when you find yourself wanting to put GUARDS on a case expr, try and IF THEN ELSE instead. 

fancySeven = 
    let a = 3
    in 2 * a + 1  -- subexpression of the let where a will be used.
-- *Jan17> fancySeven 
-- 7
fancyNine = 
    let x = 4 
        y = 5
    in x + y 
-- *Jan17> fancyNine 
-- 9

numEven ns  = 
    let evenNums = removeOdd ns 
    in length evenNums
-- *Jan17> numEven [1..11]  
-- 5
-- NOTE LET BINDINGS DONT HAVE TO BE ASSOCIATED WITH A FUNCTION DEF.
fancyTen = 2 * (let a  = 4 in a +1) 
-- *Jan17> fancyTen 
-- 10


fancySeven' = 2 * a +1 
    where a = 3  
-- *Jan17> fancySeven' 
-- 7
-- WHERE IS ASSCOCIATED WITH FUNCTION DEF ALWAYS.

-- WHERE IS TOP DOWN 
-- LET IS BOTTOM UP 

-- SPACES OVER TABS ALWAYS !
-- LAZY EVALUATION, HASKELL WON'T EVALUATE ANYTHING UNTIL IT HAS TO. 


-- DEF NEW OPERATORS 
(a,b) .+ (c,d) = (a + c, b + d) -- .+
-- *Jan17> (3,4) .+ (5,9)
-- (8,13)


-- MAP FUNCTION 
-- map :: (a -> b) -> [a] -> [b] 	-- Defined in `GHC.Base'
-- map length ["hello","it's","me"] -- map takes two inputs.  
-- [5,4,2]
-- *Jan17> map (/2) [1..11] 
-- [0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5]

double'' = map (2*) 
half 	 = map (/2) 
-- *Jan17> half  [1..11]
-- [0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5]

-- FILTER filters out what doesn't pass def 

isEven' x 	= x `mod` 2 == 0 
removeOdd' 	= filter isEven'
-- *Jan17> removeOdd' [1..13]  
-- [2,4,6,8,10,12]

MAP WITH FILTER 

-- *Jan17> map snd (filter fst [(True,1),(False,7),(True,11)]) 
-- [1,11]

-- FOLD combines all values in a list into one value
-- *Jan17> foldl (+) 0 [1,2,3,4] 
-- 10

-- ZIPWITH 
-- *Jan17> zipWith (+) [1..5] [2..6] 
-- [3,5,7,9,11]


-- *Jan17> let plus3 x y z = x + y + z 
-- *Jan17> zipWith3 plus3 [1, 3, 5] [2, 4, 6] [3, 5, 7]
-- [6,12,18]

-- . Function Composition 
-- $ Function Application 


