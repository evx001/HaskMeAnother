module Jan11 where 
--5.8.1-- 
-- sum of first hundred squares

-- Prelude> sum [y^2|y<-[1..100]]
-- 338350

dada2 n a = concat [take n (repeat a)] 

d2 :: Integer -> Integer -> Integer -> Integer
d2 n m p =(div(product(concat(dada2(10101+1)[x^2|x<-[1..n]])))(product[m+11^11-1]))^p
-- (5.73 secs, 3833070184 bytes)
-- (1.34 secs, 259655336 bytes) 
