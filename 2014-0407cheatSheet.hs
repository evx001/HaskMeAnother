------ loading a module -------------------------
:module + Data.Ratio
-- Prelude Data.Ratio>
-- ---------------------
-- loading a second module  
:m + Data.List
-- Prelude Data.Ratio Data.List>
-- --------------------------
-- to reset to no modules -------- 
Prelude Data.Ratio Data.List> :m
-- Prelude>
------- moving to another working dir ----------
Prelude> :cd HaskMeAnother\\

--------------------------------
-- importing where names clash
-- as L here prefixes the imported elements 
-- they can be accessed as L.element
-- first letter CAP numbers may follow.  
import qualified Data.ByteString.Lazy.Char8 as L1

--------------------------------
-- DEF NEW OPERATORS 
(a,b) .+ (c,d) = (a + c, b + d) -- .+
-- *Jan17> (3,4) .+ (5,9)
-- (8,13)
-------------------------------



