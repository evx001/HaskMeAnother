module Dec7 where 
import ListSort
import QsortR
-- import System.Random
swap (a,b) = (b,a) 
-- let 
perennials = [("C",[1,2,1,1]),("Java",[2,1,4,0]),("Objective_C",[3,38,0,0]),("C++",[4,3,2,6]),("C#",[5,7,0,0]),("PHP",[6,5,0,0]),("Visual_Basic",[7,4,5,5]),("Python",[8,6,29,0]),("Transact_SQL",[9,45,0,0]),("JavaScript",[10,10,14,0]),("Lisp",[15,21,17,3]),("COBOL",[19,17,3,12]),("Ada",[22,23,18,2])]

sumRevPeren =  zip   [sum(fst(swap (perennials!!n))) | n <- [0..12]]   [snd(swap (perennials!!n)) | n <- [0..12]] 

-- listSort sumRevPeren 

{-

[sum(fst(swap (perennials!!n))) | n <- [0..12]]


------------------------------------------------------------------------ 
let sumRevPeren =  zip   [sum(fst(swap (perennials!!n))) | n <- [0..12]]   [snd(swap (perennials!!n)) | n <- [0..12]] 




*Dec7>  zip   [sum(fst(swap (perennials!!n))) | n <- [0..12]]   [snd(swap (perennials!!n)) | n <- [0..12]] 
[(5,"C"),(7,"Java"),(41,"Objective_C"),(15,"C++"),(12,"C#"),(11,"PHP"),(21,"Visual_Basic"),(43,"Python"),(54,"Transact_SQL"),(34,"JavaScript"),(56,"Lisp"),(51,"COBOL"),(65,"Ada")]


*Dec7> [sum(fst(swap (perennials!!n))) | n <- [0..12]]
[5,7,41,15,12,11,21,43,54,34,56,51,65]

*Dec7> [snd(swap (perennials!!n)) | n <- [0..12]]
["C","Java","Objective_C","C++","C#","PHP","Visual_Basic","Python","Transact_SQL","JavaScript","Lisp","COBOL","Ada"]

*Dec7> zip  [snd(swap (perennials!!n)) | n <- [0..12]] [sum(fst(swap (perennials!!n))) | n <- [0..12]]
[("C",5),("Java",7),("Objective_C",41),("C++",15),("C#",12),("PHP",11),("Visual_Basic",21),("Python",43),("Transact_SQL",54),("JavaScript",34),("Lisp",56),("COBOL",51),("Ada",65)]


revPerennials = [swap (perennials!!n) | n <- [0..12]]
revRevPerenn = reverse revPerennials


minimum (tail revPerennials) 
*Dec7> if minimum revPerennials == revPerennials!!0 then revPerennials!!0 else revPerennials!!1
([1,2,1,1],"C")
*Dec7> if maximum revPerennials == revPerennials!!0 then revPerennials!!0 else revPerennials!!1
([2,1,4,0],"Java")
*Dec7> minimum (tail revPerennials)
([2,1,4,0],"Java")
*Dec7> minimum (tail(tail revPerennials))
([3,38,0,0],"Objective_C")
*Dec7> minimum (tail(tail(tail revPerennials)))
([4,3,2,6],"C++")
*Dec7> minimum (tail(tail(tail(tail revPerennials))))
([5,7,0,0],"C#")
*Dec7> minimum (tail(tail(tail(tail(tail revPerennials)))))
([6,5,0,0],"PHP")
*Dec7> minimum (tail(tail(tail(tail(tail(tail revPerennials))))))
([7,4,5,5],"Visual_Basic")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail revPerennials))))))) 
([8,6,29,0],"Python")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail(tail revPerennials)))))))) 
([9,45,0,0],"Transact_SQL")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail(tail(tail revPerennials))))))))) 
([10,10,14,0],"JavaScript")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail(tail(tail (tail revPerennials)))))))))) 
([15,21,17,3],"Lisp")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail(tail(tail (tail(tail revPerennials))))))))))) 
([19,17,3,12],"COBOL")
*Dec7> minimum (tail(tail(tail(tail(tail(tail (tail(tail(tail (tail(tail(tail revPerennials)))))))))))) 
([22,23,18,2],"Ada")
----------------------------------------------------------------------------------------
*Dec7> if minimum revPerennials == revPerennials!!0 then revPerennials!!0 else revPerennials!!1
([1,2,1,1],"C")
*Dec7> if maximum revPerennials == revPerennials!!0 then revPerennials!!0 else revPerennials!!1
([2,1,4,0],"Java")

head [swap (perennials!!n) | n <- [0..12]] == maximum [swap (perennials!!n) | n <- [0..12]]
False

let RevPerennials =[([1,2,1,1],"C"),([2,1,4,0],"Java"),([3,38,0,0],"Objective_C"),([4,3,2,6],"C++"),([5,7,0,0],"C#"),([6,5,0,0],"PHP"),([7,
4,5,5],"Visual_Basic"),([8,6,29,0],"Python"),([9,45,0,0],"Transact_SQL"),([10,10,14,0],"JavaScript"),([15,21,17,3],"Lisp
"),([19,17,3,12],"COBOL"),([22,23,18,2],"Ada")]

maximum[swap (perennials!!n) | n <- [0..12]]
([22,23,18,2],"Ada")

minimum[swap (perennials!!n) | n <- [0..12]]
([1,2,1,1],"C")


{- *Dec5> swap (perennials!!0)
    ([1,2,1,1],"C") 
    -}
-- perennials!!0 -- > ("C",[1,2,1,1])
-- perennials!!1 -- > ("Java",[2,1,4,0])
-- snd (perennials!!1)-- > [2,1,4,0]
-- fst (perennials!!1)-- > "Java"
-- ?? snd (perennials!!n)
-- ?? dada1 =([]:[x|x <- sum snd (perennials!![0..12])
-- dada2 =([]:[x|x <- sum snd (perennials!![0..12])
-- ?? swap (perennials!!n)
-- ?? popper n = swap (perennials!!n) 
-- ?? let popper [n] = swap (perennials!!n)
-- 
(if odd ((length perennials)+0) then ((length perennials)-1) else (length perennials))

if (drop n  perennials) == [] then [] else (drop n-1 perennials)
-}
