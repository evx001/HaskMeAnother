module Dec5 where 
import ListSort
-- import Data.Permute
-- no sale 
swap (a,b) = (b,a) 
-- let 
perennials = [("C",[1,2,1,1]),("Java",[2,1,4,0]),("Objective_C",[3,38,0,0]),("C++",[4,3,2,6]),("C#",[5,7,0,0]),("PHP",[6,5,0,0]),("Visual_Basic",[7,4,5,5]),("Python",[8,6,29,0]),("Transact_SQL",[9,45,0,0]),("JavaScript",[10,10,14,0]),("Lisp",[15,21,17,3]),("COBOL",[19,17,3,12]),("Ada",[22,23,18,2])]
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
*Dec5> popper [0..5]
*** Exception: <interactive>:15:5-37: Non-exhaustive patterns in function popper         

*Dec5> [sum (fst(popper[1]))]
[7]