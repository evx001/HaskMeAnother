module SndADT where 
import  qualified AdtOne as A1 

-- the idea here is to test if one module's namespace conflicts with another's pertaining to ADT's and named feilds. 
-- loading / importing two feilds that share a similarly named feild. 


type Person = [Char] 
type GovOrg = [Char] 
type Individual = [Char] 
type Company = [Char] 
data Client = GovOrg Char 
	| Company Char Integer Char Char 
	| Individual Char Char Bool 
	deriving Show  
 
{- 
*SndADT> :i A1.Client
data A1.Client
  = A1.GovOrg Char
  | A1.Company Char Integer Char Char
  | A1.Individual Char Char Bool
        -- Defined at AdtOne.hs:7:6
        -- instance Show A1.Client -- Defined at AdtOne.hs:10:18
-} 








{- 

CompanyName :: Client -> Maybe String 
companyName = case client of 
	CompanyName ---->Justname -> Nothing  
-} 
