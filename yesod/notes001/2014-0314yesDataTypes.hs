module Dtypes where 
import Data.Text 


type GearCount = Int -- type synonym 
-- Int and GearCount can be swapped at will. 
--
newtype Make = Make Text -- Text can't be swapped with Make -- there is no compilation cost for newtypes. 


type Model = Text -- we add this synonym so data Vehicle will compile  

data Vehicle = Bicycle GearCount | Car Make Model -- algebraic datatype. 

data Maybe a = Just a | Nothing -- "a" is a type variable of the anytype variety. 

---------------------------------------------------------
-- cabal install alex 
--  hjsmin version three is required for  the JavaScript minifier Yesod uses to avoid language-javascript package error messages. 

--------------------------------------------------------
-- %APPDATA%\cabal\bin -- is the windows path 
-- $HOME/.cabal/bin -- is Mac/Linux 
--
--
