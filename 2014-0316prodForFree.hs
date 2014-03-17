
program will come resemble the data it processes,

type Adress = String -- alias

data Person = Person 	{firstName :: Name 
			, lasName  :: Name 
			, ssn      :: SSN
			} 

address :: Person -> Address  

me = Person "Eric"


Data.Either 


Functors  -- mapping -- but doesn't alter it's context -- unlike a monad 
-- that's why we can map over an infinite because I don't have to account the entire consumption of that infinte list. 


values may be associated with a context. 
(fmap) :: Functor f => (a -> b) -> f a -> f b

Prelude> fmap (+1) [2]
[3]

Prelude> fmap (+1) [2,6]
[3,7,8]


Applicative functors 
-- Control.Applicative
-- Prelude> :m Control.Applicative
-- Prelude Control.Applicative> :t (<*>)
-- (<*>) :: Applicative f => f (a -> b) -> f a -> f b
--
-- Prelude Control.Applicative> fmap (+) [1]

<interactive>:11:1:
    No instance for (Show (a0 -> a0)) arising from a use of `print'
    Possible fix: add an instance declaration for (Show (a0 -> a0))
    In a stmt of an interactive GHCi command: print it

<interactive>:11:6:
    No instance for (Num a0) arising from a use of `+'
    The type variable `a0' is ambiguous
    Possible fix: add a type signature that fixes these type variable(s)
    Note: there are several potential instances:
      instance Num Double -- Defined in `GHC.Float'
      instance Num Float -- Defined in `GHC.Float'
      instance Integral a => Num (GHC.Real.Ratio a)
        -- Defined in `GHC.Real'
      ...plus three others
    In the first argument of `fmap', namely `(+)'
    In the expression: fmap (+) [1]
    In an equation for `it': it = fmap (+) [1]
Prelude Control.Applicative> :t fmap (+) [1]
fmap (+) [1] :: Num a => [a -> a]

fmap Person ["Eric"] :: [Name -> SSN -> Person] 


Person <$> ["Eric"] <*> ["jones"] :: [SSN -> Person] 

Prelude Control.Applicative> :t (>>=)
(>>=) :: Monad m => m a -> (a -> m b) -> m b

Libraries 

-- type driven development 
-- type FirstName = Name 
-- type LastName  = Name 
-- type Score 	  = Integer 
data Player = 
	

-- hspec 
-- Testing Framework 
--
logonMessageSerializationSpec :: Spec 
logonMessageSerailizationSpec =  

-- parsec
--
Prelude> :m Test.Hspec
Prelude Test.Hspec> :m Text.Parsec
Prelude Text.Parsec> :m Data.Serialize
Prelude Data.Serialize> 


-- strings tend to require more tests 
--
-- turning it into JSON or XML 
--
instance Serialize Person where 
	put = do	putString 
			putString 
			putString 
			putWord32 
			putDate
	get = PlayerScore 	<$> getString 
				<*> getString 
				<*> get 
				<*> getDate



