module ClrLstScrp where 
-- data Customer = MakeCustomer CustomerId String Int
-- data DialogResponse = Yes|No|Help|Quit 
--
-- scrape Crlist 
--        data syn    [listRaw,[Char]], 
--                    [rating, (Char,Int)] 
--                    [dist?, Int]
type LstRaw = [Char] 
type Rting   = (Char,Int) 
type Loc    = [Char]

-- adt -- typeCon -- dataCon --   
data Jb = MkJb   
