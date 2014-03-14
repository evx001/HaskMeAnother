module Dtypes where 
import Data.Text 


type GearCount = Int -- type synonym 
-- Int and GearCount can be swapped at will. 
--
newtype Make = Make Text -- Text can't be swapped with Make -- there is no compilation cost for newtypes. 


type Model = Text -- we add this synonym so data Vehicle will compile  

data Vehicle = Bicycle GearCount | Car Make Model -- algebraic datatype. 

data Maybe a = Just a | Nothing -- "a" is a type variable of the anytype variety. 

---------------------------------------------------------
-- cabal install alex 
--  hjsmin version three is required for  the JavaScript minifier Yesod uses to avoid language-javascript package error messages. 

-- cabal install happy
--
-- On Debian-based install all of the required C libraries
-- sudo apt-get install libedit-dev libbsd-dev libgmp3-dev zlib1g-dev freeglut3-dev

--------------------------------------------------------
-- %APPDATA%\cabal\bin -- is the windows path 
-- $HOME/.cabal/bin -- is Mac/Linux 
-- -----------------------------------------------------
--  cabal-dev	-- to sandbox 
--  virthualenv -- to sandbox  
-------------------------------------------------------
-- language pragmas -- {-# LANGUAGE MyLanguageExtension #-}
--  GHC command line arguments --  -XMyLanguageExtension
--
-- ?? in cabal file, add an extensions block ?? 
--
--  {-# LANGUAGE OverloadedStrings, TypeSynonymInstances, FlexibleInstances #-}
--
--  ---------------------------------------------------
--  $(hamletFile "myfile.hamlet") -- Template Haskell
--  ------------------------------------------------- 
--   -ddump-splices
--   ------------------------------------------------
--
--   
--     {-# LANGUAGE QuasiQuotes #-} 

--      [hamlet|<p>This is quasi-quoted Hamlet.|] 

-- The syntax is set off using square brackets and pipes. The name of the quasi-quoter is 
-- given between the opening bracket and the first pipe, and the content is given between 
-- the pipes. 
