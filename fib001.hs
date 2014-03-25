module Fib001 where 
fib = 1 : 1 : map (\(a,b) -> a + b) (zip fib (tail fib))
fib001 = take 13 fib 
