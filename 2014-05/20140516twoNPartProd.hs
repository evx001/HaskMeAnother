{-# LANGUAGE NoMonomorphismRestriction #-}
module TwoNPartProd where 


n1 = 5678
n2 = 1234 

-- n3 = n1 * n2 

pRow1 = length (show n1)
pRow2 = length (show n2)

x = 5678
y = 1234 


a = read $ fst $ splitAt ((div) (length(show x)) 2) (show x) 
-- *TwoNPartProd> a
-- "56"

b = read $ snd $ splitAt ((div) (length(show x)) 2) (show x) 
-- *TwoNPartProd> b
-- "78"
c = read $ fst $ splitAt ((div) (length(show y)) 2) (show y) 
d = read $ snd $ splitAt ((div) (length(show y)) 2) (show y)
-- *TwoNPartProd> c
-- "12"
-- *TwoNPartProd> d
-- "34"
fn001 = (a * c) -- 672
fn002 = (b * d) -- 2652 
fn003 = (a + b) * (c + d) -- 6164  
fn004 = fn003-fn002-fn001 -- 2840 * 100
fn005 = fn001 * 10000 -- 6720000 
fn006 = fn004 * 100  -- 284000 
fn007 = fn002 + fn005 + fn006 
fn008 = x * y 
fn009 = fn007 == fn008 


fn010 = ((a * c) * 10000) + (b*d) 
fn011 = (((a + b) * (c + d) - (b * d) - (a * c)) * 100 ) 

fn012 = fn010 + fn011 == x * y  
fn013 =  ((a * c) * 10000) + (b*d) +  (((a + b) * (c + d) - (b * d) - (a * c)) * 100 ) == x * y 

------------------------------------------------------
fn00A x y = (((10^n)/2) a+b) * (((10^n)/2) * (c+d))
           where n = x * y 		
