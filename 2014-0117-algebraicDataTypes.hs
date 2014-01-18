module Algebraic where 
-- :  set expandtab ts=4 ruler number  
{- Type Alias 

type MyChar = Char

it adds some readability but the type-checker doesn't care if you use it consistently or not.


--      NEWTYPES --

*Jan17> type ListOChars = [Char]
*Jan17> :i ListOChars
type ListOChars = [Char] 	-- Defined at <interactive>:17:6
now we can refer to our type ListOChars and it will mean [Char]

A type synonym is a new name for an existing type. Values of different synonyms of the same type are entirely compatible. In Haskell you can define a type synonym using type:


BUT THEY ONLY TAKE ONE ARGUMENT



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
-- newtype CustomerId = MakeCustomerId Int 
-- customer :: CustomerId
-- customer = MakeCustomerId 13

-- customerToInt :: CustomerId -> Int
-- customerToInt (MakeCustomerId i) = i 

-- use this to make a type that is unique but derived from an existing type. This uniqueness will now be enForced by the compiler. You are FORCED to be honest in your types.
---------------------------------------------------------------------
-- 			ALGEBRAIC DATATYPES  
---------------------------------------------------------------------
-- data Customer = MakeCustomer CustomerId String Int 
{- to define it --  
 keyword data, 
 then the name of the type being defined 
 then the = 
 then the constructor name  (way different from what it means in oop)
 then the constructor args.  
 NOTE! constructors here are just a binding of values; not source code in themselves
 AND! CustomerId could have just been an Int but by making it unique 
	we can assure it's proper usage as well as convey it's semantic  meaning.

*Algebraic> :i CustomerId String Int 
newtype CustomerId = MakeCustomerId Int
  	-- Defined at 2014-0117-algebraicDataTypes.hs:79:9
type String = [Char] 	-- Defined in `GHC.Base'
data Int = GHC.Types.I# GHC.Prim.Int# 	-- Defined in `GHC.Types'

data Customer = MakeCustomer CustomerId String Int 

 CustomerId String Int 
	these are laid out like function args and defined similarly 
type names and Constructor Names can be the same and often are. 
-----------------------------------------------------
-- 	creating a value for the customer. 
---------------------------------------------------}
-- applying this definition: 

-- data Customer = MakeCustomer CustomerId String Int 

newtype CustomerId = CustomerId Int 
customer :: CustomerId
customer = CustomerId 13

customerToInt :: CustomerId -> Int
customerToInt (CustomerId i) = i 

data     Customer = Customer CustomerId String Int 
alice :: Customer 
alice =  Customer (CustomerId 13) "Alice" 42 

getCustomerId :: Customer -> CustomerId
-- getCustomerId (Customer cust_id name luckyNumber) = cust_id
getCustomerId (Customer cust_id _ _ ) = cust_id -- so we can search easier / wider 

-- This was something like the newtype but we can add more arguments / attributes

-- tuples are sometimes used but usually they aren't descriptive enough 

data StringTree = StringTree String [StringTree] 

hierarchy = StringTree "C:" 
                [ StringTree "Program Files" [] 
                , StringTree "Users"
                    [StringTree "Alice" [] ] 
                , StringTree "Cats" []
                ]

-- MULTIPLE CONSTRUCTORS
-- single constructors are just containers and behave something like a Class or Struct 
-- this is where things get interesting 
-- ALGIBRAIC DATA TYPES WITH MULTIPLE CONSTRUCTORS aren't available in mainstream oop languages 

-- enum like, because none of the theses have args.
data DialogResponse = Yes|No|Help|Quit

data MaybeInt = NoInt | JustInt Int 





 



