module Feb28 where 

-- a bit like an Algebraic Data Type
-- (a triple with three parts, for 1 for the test, a and a1 for the returns) 
-- pow2 :: (Eq a, Num a, Num a1) => a -> a1
pow2 n =    
    if n == 0 -- at first this may look like we are redefining the number one.  
    then 1    -- if the condition is zero we want a one returned. 
    else 2 * (pow2 (n-1)) -- otherwise we want something else 
                          --  
-- try using type Synonyms rather than primitives 
-- so that they are semantically expressive. 

-- Functor mapped over values in a container.  
-- Values can be associated with a context
-- Applicative Functors 
--      taking a function out of a list and applying it to a value in a different container.

pure :: a -> f a  

fmap :: (a -> b) -> f a -> f b
-- in greek it is one
-- monad is a type class that gives return function and a bind (>>=)  
-- monads 
-- Applicative functor formed by adding pure computations to a given applicative functor.  
-- BDD 
-- TDD tests become trivial 
-- Hspec  
-------------------------------
-- data PLayer = Player { firstName :: FirstName,


------------------------------
CodeCabal-NYC

Ready, set, Code Your Future!

Super-intensive, high-level programming crash course for those new to coding. 

We are going from zero to sixty in 4 sessions. Participants will be expected to work a minimum 3 hours per day on session materials, every day between sessions.  

After this you will be able to chart your own future in Tech, instead of merely follow the herd.

Open source build environment + tools included: 

Absolute Beginners, only, because a clear slate allows us to go really fast. 

Class size is small, individual attention is maximized. 

 If you give it your all, you will not be lost or left behind because we advance as a team.


