module Jan18 where 
-- :   set expandtab ts=4 ruler number
{---------------------------------------------------
data Person = Person { firstName :: String
, lastName :: String
, age :: Int
, height :: Float
, phoneNumber :: String
, flavor :: String } deriving (Show) ----------------------} 



data Person = Person { firstName :: String
, lastName :: String
, age :: Int
} deriving (Eq)
---------------------------------------------------------------------
-- 			ALGEBRAIC DATATYPES  
---------------------------------------------------------------------
newtype CustomerId = CustomerId Int 
customer :: CustomerId
customer = CustomerId 13

customerToInt :: CustomerId -> Int
customerToInt (CustomerId i) = i 

data     Customer = Customer CustomerId String Int 
alice :: Customer 
alice =  Customer (CustomerId 13) "Alice" 42 

getCustomerId (Customer cust_id _ _ ) = cust_id 



data StringTree = StringTree String [StringTree] 
-------------------------------------------------------
hierarchy = StringTree "C:" 
                [ StringTree "Program Files" [] 
                , StringTree "Users"
                    [StringTree "Alice" [] ] 
                , StringTree "Cats" []
                ]

-- MULTIPLE CONSTRUCTORS

data DialogResponse = Yes|No|Help|Quit
----------------------------------------------------------
data MaybeInt = NoInt | JustInt Int
defaultInt :: Int -> MaybeInt -> Int 
defaultInt defaultValue NoInt = defaultValue
----------------------------------------------------------
defaultInt _ (JustInt x) = x 
----------------------------------------------------------
data StringList = EmptyStringList 
                | ConsStringList String StringList 

lengthStringList :: StringList -> Int
lengthStringList EmptyStringList = 0 
lengthStringList (ConsStringList _ xs) = 1 + lengthStringList xs  


