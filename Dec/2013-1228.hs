module Dec28 where
{------------------- haskellforcats@gmail.com -------------
-- Haskell: because proofs are proof!
-- Haskell: for when your test-base exceeds your code-base.


99.9% have failed to solve this.

if 
3 = 18 
4 = 32
5 = 50 
6 = 72
7 = 98

then 

10 = x
------------------------}
 
product [(snd(last(zip[3..10](take 8[18`div`3,32`div`4..])))),(fst(last(zip[3..10](take 8[18`div`3,32`div`4..]))))]



{-
th3to10 = [3..10] -- the entire sequence through 10, we want to find values for 8,9,10
dada7  = ((length th3to10)-1) -- the n of addresses starting from zero (0-7)
a = (3,18) 
b = (4,32)
c = (5,50)
d = (6,72)
e = (7,98) 
-- f = (8,f')
-- g = (9,g')
-- h = (10,h')
yadda0 = [a,b,c,d,e]
yadda1 =  [(fst(swap n))|n <-[a,b,c,d,e]]
swap (a,b) = (b,a) -- we turn the tuple around and feed it to --> dada1
dada1 = [(div (fst(swap n)) (snd(swap n)))|n <-[a,b,c,d,e]] -- [6,8,10,12,14] our base sequence -- we need evens to three more places. 



 
99.9% have failed to solve this.

if 
3 = 18 
4 = 32
5 = 50 
6 = 72
7 = 98

then 

10 = x 
GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Prelude> 3/18
0.16666666666666666
Prelude> 4/32
0.125
Prelude> 5/50
0.1
Prelude> 6/72
8.333333333333333e-2
Prelude> 7/98
7.142857142857142e-2
Prelude> [3/18,4/32..7/98]
[0.16666666666666666,0.125,8.333333333333334e-2]
Prelude> [18,32..98]
[18,32,46,60,74,88]
Prelude> [32,50..98]
[32,50,68,86]
Prelude> (3,18) 
(3,18)
 

Prelude> let a = (3,18) 
Prelude> let b = (4,32)
Prelude> let c = (5,50)
Prelude> let d = (6,72)
Prelude> let e = (7,98) 
Prelude> 18/3
6.0
Prelude> 32/4
8.0
Prelude> 50/5
10.0
Prelude> 72/6
12.0
Prelude> 98/7
14.0
Prelude> 8 * 16

Prelude> f
(8,128)
Prelude> g
(9,162)
Prelude> h
(10,200)


Prelude> [(3*6),(4*8)..(10*20)]
[18,32,46,60,74,88,102,116,130,144,158,172,186,200].

*Dec28> last [z|z <- (zip[3..10](take 8[18`div`3,32`div`4..]))]
(10,20)

*Dec28> [(snd(last(zip[3..10](take 8[18`div`3,32`div`4..]))))]
[20]
product [(snd(last(zip[3..10](take 8[18`div`3,32`div`4..])))),(fst(last(zip[3..10](take 8[18`div`3,32`div`4..]))))]
-}

