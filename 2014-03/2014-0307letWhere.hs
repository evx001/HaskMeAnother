module LetWhere where 

--------------------------
-- LET AND WHERE BINDINGS 
--------------------------
-- Haskell programmers often wonder whether to use let or where.
-- KNOW THAT let ... in ... IS AN EXPRESSION; it can be written wherever expressions are allowed. 
-- where is bound to a surrounding syntactic construct; WHERE has a CONTEXT. 

FancySeven = 
    let a = 3
    in 2 * a + 1  -- subexpression of the let where a will be used.
-- *Jan17> fancySeven 
-- 7

fancyNine = 
    let x = 4 
        y = 5
    in x + y 
-- *Jan17> fancyNine 
-- 9

numEven ns  = 
    let evenNums = removeOdd ns 
    in length evenNums
-- *Jan17> numEven [1..11]  
-- 5

fancyTen = 2 * (let a  = 4 in a +1) 
-- *Jan17> fancyTen 
-- 10


fancySeven' = 2 * a +1 
    where a = 3  
-- *Jan17> fancySeven' 
-- 7
-- WHERE is always asscociated with function def always. 
-- let is where ever functions are possible. 
-- let pushes down into a function 
-- where sucks up to the associated function.
-------------------------------------------------
