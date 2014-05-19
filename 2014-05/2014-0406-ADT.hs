module AdtOne where 

type Person = [Char] 
type GovOrg = [Char] 
type Individual = [Char] 
type Company = [Char] 
data Client = GovOrg Char 
	| Company Char Integer Char Char 
	| Individual Char Char Bool 
	deriving Show  
-- -------------------------------------------------
-- *AdtOne> :t Individual
-- Individual :: Char -> Char -> Bool -> Client
-- ---------------------------------------------------
-- *AdtOne> :i Client
-- data Client
--   = GovOrg Char
--   | Company Char Integer Char Char
--   | Individual Char Char Bool
--   	-- Defined at 2014-0406-ADT.hs:7:6
-- instance Show Client -- Defined at 2014-0406-ADT.hs:10:18
-- -------------------------------------------- 
-- *AdtOne> :i Company
-- data Client = ... | Company Char Integer Char Char | ...
--   	-- Defined at 2014-0406-ADT.hs:8:11
-- type Company = [Char] 	-- Defined at 2014-0406-ADT.hs:6:6
-- --------------------------------------------
-- *AdtOne> :i Person
-- type Person = [Char] 	-- Defined at 2014-0406-ADT.hs:3:6
----------------------------------------------
-- *AdtOne> :i GovOrg
-- data Client = GovOrg Char | ...
--   	-- Defined at 2014-0406-ADT.hs:7:15
-- type GovOrg = [Char] 	-- Defined at 2014-0406-ADT.hs:4:6
-- ----------------------------------------------
-- 

