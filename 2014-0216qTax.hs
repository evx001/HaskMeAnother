module QtxFed where 


expIncTaxable1  = x 
                where    
                x = 12000.00 

farm1b          = x 
                where 
                x = 0 

two             = expIncTaxable1 - farm1b 

three = two *   k
                where  
                k = 0.9235

four = three *  k 
                where 
                k = 0.029

socSecTaxMaxInc5 = k 
                where 
                k = 117000

wages6          = x
                where 
                x = 0 

seven           = wages6 - socSecTaxMaxInc5 

fn000           = minimum [seven,three]
fn001           = if seven <= 0 then 0 else fn000  
-- returns either 0 or fn000
eight7or3       = fn000 

nine8byDot124   = k 
                where 
                k = 0.124 
tenAdd4and9     = x + y 
                where 
                x = four 
                y = nine8byDot124

eleven          = tenAdd4and9 * k 
                where 
                k = 0.5 -- your expected deduction for self employment tax on 1040 line 27.
dada1           = expIncTaxable1 - eleven 
-- *QtxFed> dada1
-- 11839.249
