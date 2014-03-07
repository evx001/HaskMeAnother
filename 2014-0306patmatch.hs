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
--
