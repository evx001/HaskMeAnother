module Jan8 where 

-- working getting the exercises from chap 5 to compile
-- currently there are many name collisions 
-- loaded Data.List so I could have GenericLength
[1 of 1] Compiling Ch5examp2        ( ch5examp2.hs, interpreted )

ch5examp2.hs:203:54:
    Couldn't match expected type `Integer' with actual type `Int'
    In the second argument of `percent', namely `n'
    In the expression: percent (count x xs') n
    In the expression: [percent (count x xs') n | x <- ['a' .. 'z']]

ch5examp2.hs:221:50:
    Couldn't match expected type `Bool' with actual type `Char -> Bool'
    In the expression: isAlpha
    In a stmt of a list comprehension: isAlpha
    In the first argument of `length', namely `[x | x <- xs, isAlpha]'
