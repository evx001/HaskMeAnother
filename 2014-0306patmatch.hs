module PatMatch where 


--- this line hides some functions that we are going to define anew.
import Prelude hiding (fst,snd,head,null) 

fst (a,b) = a 
snd (a,b) = b 
thrd (a,b,c) = c 
frth (a,b,c,d) = d 
fths (a,b,c,d,e) = e 


-- *PatMatch> fths (1,'a', tail, [1..11], "hello")
-- "hello"
-- 
-- *PatMatch> snd (1,'a', tail, [1..11], "hello")
-- 
-- <interactive>:9:5:
--     Couldn't match expected type `(t0, t10)'
--                 with actual type `(t1, Char, [a0] -> [a0], [t2], [Char])'
--     In the first argument of `snd', namely
--       `(1, 'a', tail, [1 .. 11], "hello")'
--     In the expression: snd (1, 'a', tail, [1 .. 11], "hello")
--     In an equation for `it':
--         it = snd (1, 'a', tail, [1 .. 11], "hello")
-- 
-- wouldn't it be nice if fst could work on a larger tuple? 
-- what would we have to rewrite to make that happen?
-- ----------------------------------------------

null [] = True 
null (x:xs) = False 

-- *PatMatch> null []
-- True
-- *PatMatch> null [1]
-- False
-- *PatMatch> null [1..11]
-- False
-- *PatMatch> null [0]
-- False
-- *PatMatch> null "Hello"
-- False
-- *PatMatch> null ""
-- True 

-------------------------------------------------

head (x:xs) = x -- our dangerous head funtion 

-- *PatMatch> head []
-- *** Exception: 2014-0306patmatch.hs:28:1-15: Non-exhaustive patterns in function head
-- here's the result of what happens when we call our head funciton on an empty list. 
-- 
-- we could put in an exception handler 
head [] = error "ERROR! the list is empty"  

-- THIS IS LESS THAN IDEAL. 

-- remember our double function 
-- double nums = 
-- 	if null nums 
-- 	then [] 
-- 	else (2 * (head nums)) : (double (tail nums))
-- we can redo it in a pattern match 
double [] = [] 
double (x:xs) = (2 * x) : (double xs)
-- this pattern match avoids the problem of head on the empty list. 
--


  
