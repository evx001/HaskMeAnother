module Algebraic where 

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
---------------------------------------------------------------------
-- 			ALGEBRAIC DATATYPES  
---------------------------------------------------------------------
data Customer = MakeCustomer CustomerId String Int 
{- to define it --  
 keyword data, 
 then the name of the type being defined 
 then the = 
 then the constructor name 
		(way different from what it means in oop)
 then comes the constructor args.  
 NOTE! constructors here are just a binding of values; not source code in themselves
 NOTE! CustomerId could have just been an Int but by making it unique 
	we can assure it's proper usage as well as convey it's special meaning.
*Algebraic> :i CustomerId 
newtype CustomerId = MakeCustomerId Int
  	 Defined at 2014-0117-algebraicDataTypes.hs:79:9
-}

 



