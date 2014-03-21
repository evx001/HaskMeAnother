module ClrLstScrp where 
import Data.Test (Text)  
-- data Customer = MakeCustomer CustomerId String Int
-- data DialogResponse = Yes|No|Help|Quit 
--  Algebraic Data Types (ADTs), such as 
type Model = Text 
type Make  = [Char] 
type GearCount = Int 
data Vehicle = Bicycle GearCount | Car Make Model
-- scrape Crlist 
--        data syn    [listRaw,[Char]], 
--                    [rating, (Char,Int)] 
--                    [dist?, Int]
type LstRaw = [Char] 
type Rting   = (Char,Int) 
type Loc    = [Char]

-- adt -- typeCon -- dataCon --   
data Jb = MkJb LstRaw Rting Loc  

 
