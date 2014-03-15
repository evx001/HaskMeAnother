module Dtypes where 
import Data.Text 
-- could use a good method for configuring yesod across machines. 
-- Hand around the build????  


type GearCount = Int -- type synonym 
-- Int and GearCount can be swapped at will. 
--
newtype Make = Make Text -- Text can't be swapped with Make -- there is no compilation cost for newtypes. 


type Model = Text -- we add this synonym so data Vehicle will compile  

data Vehicle = Bicycle GearCount | Car Make Model -- algebraic datatype. 

data Maybe a = Just a | Nothing -- "a" is a type variable of the anytype variety. 

---------------------------------------------------------
-- cabal install happy
-- cabal install alex 
--  hjsmin version three is required for  the JavaScript minifier Yesod uses to avoid language-javascript package error messages. 

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

-- The syntax is set off using square brackets and pipes. The name of the quasi-quoter is  given between the opening bracket and the first pipe, and the content is given between  the pipes.

-------------------
-- TYPE FAMILIES -- 
-------------------
-- an association between two different types 
-- an associated type is a method to add polymorphism to an existing 
-- -------------------
-- see assocType.hs --
-- thanks to "a" after Content and "()" after IO it now loads. Our error was within five lines of where the fix was.   
----------------------

-- Template Haskell is code that generates an Abstract Syntax Tree (AST). That's it's primary use for us in yesod. T.H. isn’t very type safe. Yesod uses extensive unit testing for validation purposes. 
-- $(hamletFile "myfile.hamlet") -- this line will be seen as a "runAs" Template-Haskell. TM can perform IO actions. Input can get parsed at compile time, so we get, compile-time checked HTML, CSS and JavaScript templates.  

---------------
-- QuasiQuotes -- an alternative to Template Haskell  
-------------- 

-- {-# LANGUAGE QuasiQuotes #-} 
-- 
-- [hamlet|<p>this is quasi-quoted Hamlet.|]  

-- the name  "[hamlet|" occurs between bracket and pipe.   
-- content happens between pipes |<p>this is quasi-quoted Hamlet.|


