module Nov24 where 


{- Note that [(function1),(function2)...(functionN)] 
is susceptible to all the functions that all lists are.  
  *PrImEs> length [(3 `div` 4), (product fteen), (product thr3)]
    3
  *PrImEs> product [(sum fteen), (sum thr3)]
    530145

  *PrImEs> let thr3Func = [(3 `div` 4), (product fteen), (product thr3)] 



  *PrImEs>   thr3Func !! 2
    48271088561613960642858365853327381832862269440000000

 

  *PrImEs>   thr3Func !! 3
    *** Exception: Prelude.(!!): index too large
        -- note index starts with zero

  let ffTeens = tail [105,90..0]
   let fives = [100,95..0] 
    let thr3s = tail [101,99..0] ----  let thr3s = tail [101,99..0]++[0] -- missing 0 ? 
      let on1s = [100..0] 
  let numRack = [ffTeens,fives,thr3s,on1s]

  *PrImEs> sum [[1..11],[1..100]]
<interactive>:146:1:
---- but if we do this 
  *PrImEs> sum [sum[1..11], sum[1..100]]
    5116

  *PrImEs> product [negate (7)^ 7,sum [0..101],product [11..0]]
    -4242069993

(*) (negate(sum thr3Func)) 0 


-}
{-----------lean you a Hask 2.3 ------------------------------------ 
the most prev data structure in Haskel is the Linked List

texas range [1.. ]



*Main> 5:[]
[5] -- 5 was conj into the empty [] 

lists have two time costs, Constant and Linear.

Length and reverse have to walk the list so they take Linear time. 

last and head are constant time 

tail creates a new list so that takes time. 

elem walks the list to find the element. 
  *PrImEs> elem 109 myPrimes 
  True

init creates a new list of all but the last element  

sum and product have constant time. 

cycle? 
drop? 
repeat? 
replicate? 


----------------------------------------------------------------}


{- learn you Hask 2.2
hypot     a b   =   sqrt a^2 + b^2  

idCamHump humps =   if humps == 1
                    then "dromedrary"
                    else "Bactrian" 
 
*Main> let a = 3.0
*Main> let b = 4.0
*Main> hypot a b 
19.0

*Main> let a = 3
*Main> let b = 4
*Main> hypot a b 

<interactive>:20:1:
    No instance for (Floating Integer)
-} 

 
