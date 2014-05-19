-- class Monad m where
--   ...
--   return :: a -> m a
-- is a function that given an a it returns an m a 
-- where a is a pure value and m a is a computation that returns a value a these two items are seperated at the type level 
--  
-- Prelude> :i (>>=)  
-- class Monad m where
--   (>>=) :: m a -> (a -> m b) -> m b
--   ...
--   	-- Defined in `GHC.Base'
-- infixl 1 >>= 
-- 	ass Monad m where
--   (>>=) :: m a -> (a -> m b) -> m b
--   ...
--   	-- Defined in `GHC.Base'
-- infixl 1 >>=pkg list
-- the bind function has 3 m's and that m remains identical through out. 
-- operations in the m monad stay in the m monad 
-- if we were using a dynamically typed language then there is only one type that is enforced so everything is U  
-- return :: would then be U --> U 
-- (>>=)  :: would then be U -> (U -> U) -> U 
-- what you get is a chaining together, and that is well defined but there is continual co mingling. 
-- these aren't composit objects as they aren't easily seperated back into it's components 
-- 



context -- cat theory, programming 
functions + same arguement --> same result = referncial transparency 
map 
filt 
fold 
currying 
  
