module Types where 
-- : set expandtab ts=4 ruler number spell
fn007 n = length(show n)
{-
Static Typing = good for catching miss match errors 
  but constructing specific types for everything 
    will require extra thought and code 
a C# example: 
    typenme_Alloc_traits<_Tp,Alloctor::allocator_type get_allocator(); 


Dynamic types = less thinking about types 
  but more time debugging those that slip by
    however you can write a function that adds two numbers and not have to rewrite it to include floats. 

Haskell takes great strides to yield the benefits of both. It is Super strong static typing that acts dynamically for most of the usual situations. 

"Programming in Ruby I find that I have less and less confidence in the stability of my code base the further I get. With Haskell it is the inverse."

Haskell does make you work thorough a stream of compiler errors but once it compiles there a 75% less runtime errors to debug. 

Haskell has Type inference. 
You don't have to declare them. However they are available for easy reference to keep everyone honest. 
In this way Haskell is partially self documenting. 

The same code can be defined to work with many different types in polymorphic ways.

:t and :i in at the GHCI command prompt will tell you all about any function loaded. 

-> are representative of functions and their direction of application.
=> represents a type Class constraint, in that a would be any-type for any Class. Num a => means a can be any type of Number but not a Char. 

Most of the time the compiler just knows what you want. But you can always take it's suggested type and modify it as needed.     
---------------------  USING GHCI -------------
*HighOrdFun> let square x = x^2
*HighOrdFun> :t square
square :: Num a => a -> a
*HighOrdFun> :i square
square :: Num a => a -> a       -- Defined at <interactive>:5:5

*HighOrdFun> let square' x = x*x
*HighOrdFun> :t square
square :: Num a => a -> a
*HighOrdFun> :t square'
square' :: Num a => a -> a

then prove that they do the same thing with the same inputs  
*HighOrdFun> square' 2 == square 2
True
 
function combination is simple. 
*HighOrdFun> let squareSquare = square.square'
*HighOrdFun> squareSquare 4
256
-}
{- EXPLICIT TYPES ARE FOR READERS --- 

what is this function doing? 
*Types> fn007 (product [x^2|x<-[13..17191]])
130674

let whatis001 = x + y where; x = length "hello";y= 6/2

let whatis001 = x + y where; x = length "hello";y= 6 `div` 2

*Types> let fn13 = show (read "123")
*Types> fn13
"*** Exception: Prelude.read: no parse

*Types> let fn13 = show (read "123"::Integer)
*Types> fn13
"123"
-}
whatis001
  = x + y
  where
      x = length "hello"
      -- y :: Char
      y = 6 `div` 2 

{-
Explicit types will mostly help future readers of the Code. 
-}
{- POLYMORPHIC TYPES --
type variables start with lower case 
  x, xs, y, ys, f, a, 
Concrete Types have uppercase designations.
Int, Char, Double, Integer.

repeated type variable mean that they are usually the same type. 
  [a] -> a -- function takes a list of any type returns a value of any type. Whereas different type variables represent different types. 
  [t1] -> [t2] 
  a -> b 


