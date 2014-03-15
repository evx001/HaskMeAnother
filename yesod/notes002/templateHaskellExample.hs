{-# LANGUAGE TemplateHaskell #-} 
module TempHaskell where
-- ghc  -ddump-splices -- to get a look at TemplateHaskell code being generated.

 $(hamletFile "file.hamlet") 
