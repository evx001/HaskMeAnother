module Jan18 where 
-- :   set expandtab ts=4 ruler number spell 
import qualified Data.Maybe as M
----------------------------------------------------------
--          Parameterized Datatypes 
-- ---------------------------------------------------------
-- the maybe is the potential to have a type if "a" type is returned. So types that include and "a"  (Maybe a) are said to be parameterized because they are incomplete with out the parameter.  If it gets it's type var then it can go on to become a complete type. 
{- 
data Maybe a = Just a | Nothing 

x           :: Maybe Int 
x           = Nothing 

fromMaybe   :: a -> Maybe a -> a 

fromMaybe defaultVal Nothing    = defaultVal 

fromMaybe _ (Just x)            = x
-}
-- for explication see
-- figure ParameterizedTypes01a.jpeg 

-- a standard list data type would resemble this.
-- data List a = Empty | Cons a (List a) 

-- data Map k a = ...

-- Parameterized Types can hold values of any type.   
