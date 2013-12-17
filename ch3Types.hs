module CH3types where 
import Dada123

mult x y z      = x * y * z 

{-                                                  1:00
 - Types as a collections of values 
 - :: has type
 -
 - types are infered 
 - list is a sequence of values of the same type    6:00
 -
 - [1,2,3] [Int]
-- > :t [1,2,3]
[1,2,3] :: Num t => [t]
-- > :t ["1","2","3"]
["1","2","3"] :: [[Char]]
-- > :t ["1","2","3"],["a","b","c"]
-- > :t [["1","2","3"],["a","b","c"]]
[["1","2","3"],["a","b","c"]] :: [[[Char]]]
tuple is a list of hetrogeneous types who's length is known
-- > :t ("a",True,1)
("a",True,1) :: Num t => ([Char], Bool, t)

                                                    13:00

:load 
dada123 example                                     16:45                                     

lambda's 

curring 					                                  18:00

mult x y z    = x * y * z
       functions being right associative            22:03

partial application                                 23:30
       type application 
          associates to the right 
       function application 
          associates left                           25:00


	


-}


 
