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

-- MAP WITH FILTER 

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

-- EXPLICIT TYPES --
{-
dada1 = show (read "123")  

2014-0117.hs:174:9:
    No instance for (Show a0) arising from a use of `show'
    The type variable `a0' is ambiguous
    Possible fix: add a type signature that fixes these type variable(s)
    Note: there are several potential instances:
      instance Show Double -- Defined in `GHC.Float'
      instance Show Float -- Defined in `GHC.Float'
      instance (Integral a, Show a) => Show (GHC.Real.Ratio a)
        -- Defined in `GHC.Real'
      ...plus 26 others
    In the expression: show (read "123")
    In an equation for `dada1': dada1 = show (read "123")

2014-0117.hs:174:15:
    No instance for (Read a0) arising from a use of `read'
    The type variable `a0' is ambiguous
    Possible fix: add a type signature that fixes these type variable(s)
    Note: there are several potential instances:
      instance Read () -- Defined in `GHC.Read'
      instance (Read a, Read b) => Read (a, b) -- Defined in `GHC.Read'
      instance (Read a, Read b, Read c) => Read (a, b, c)
        -- Defined in `GHC.Read'
      ...plus 25 others
    In the first argument of `show', namely `(read "123")'
    In the expression: show (read "123")
    In an equation for `dada1': dada1 = show (read "123")
-} 
dada1' = show (read "123"::Int)  
-- *Jan17> dada1'
-- "123"

{- recall when you were trying to call length on a list, and then tried to use the value, length :: [a] -> Int -- it was the use of the return value that was the problem. 
? was there a simple conversion from Int --> Integer just at that one location? -} 

-- unlike Ruby where certain things were assigned an arbitrary value just so it had a value and you could even add those values and get a result. That isn't the case in Haskell. Arbitrary values aren't assigned unless there is a logical/mathematical reason for that assignment.
{- 
3 	:: Num a => a
(-3) 	:: Num a => a
3/3 	:: Fractional a => a
3.0 	:: Fractional a => a
'a' :: Char
"a" :: [Char]
"ab" :: [Char]
'1' :: Char
"11" :: [Char]

-- NEWTYPES --

*Jan17> type ListOChars = [Char]
*Jan17> :i ListOChars
type ListOChars = [Char] 	-- Defined at <interactive>:17:6
now we can refer to our type ListOChars and it will mean [Char]

A type synonym is a new name for an existing type. Values of different synonyms of the same type are entirely compatible. In Haskell you can define a type synonym using type:

type MyChar = Char

it adds some readability and the compiler doesn't care if you use it consistently or not.

A newtype declaration creates a new type. 
 types declared with the data keyword are lifted - 
that is, they contain their own ⊥ value that is distinct from all the others. (⊥ = non-terminating) A type synonym would share the same none termination.

data Foo1 = Foo1 Int    -- Defines Foo1 constructor that lazily refers to an Int
data Foo2 = Foo2 !Int   -- Defines Foo2 constructor that strictly refers to an Int
newtype Foo3 = Foo3 Int -- Defines Foo3 constructor that is synonymous with Int
 
*Jan17> newtype CustomerId = MakeCustomerId Int 
*Jan17> :i CustomerId
newtype CustomerId = MakeCustomerId Int
  	-- Defined at <interactive>:20:9
-}
newtype CustomerId = MakeCustomerId Int 
customer :: CustomerId
customer = MakeCustomerId 13

customerToInt :: CustomerId -> Int
customerToInt (MakeCustomerId i) = i 

-- use this to make a type that is unique but derived from an existing type. This uniqueness will now be enForced by the compiler. You are FORCED to be honest in your types. 



