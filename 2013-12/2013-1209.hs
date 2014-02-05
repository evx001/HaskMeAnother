module Dec9 where 
-- CH2  
a       = b+c 
        where 
            b = 1 
            c = 2 
d       = a * 2 
factorial   n       = product [1..n] 
average     ns      = sum ns `div` length ns 
double      x       = x * x 
quadruple   x       = (double x) * (double x) 
f       = a `div` length xs 
           where 
           a    = 10 
           xs   = [1,2,3,4,5]

{- 
Ok, modules loaded: Dec9.
*Dec9> a
3
*Dec9> b

<interactive>:10:1: Not in scope: `b'
*Dec9> d
6
*Dec9>
-} 
