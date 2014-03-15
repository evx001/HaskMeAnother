{-# Language TypeFamilies, OverloadedStrings #-}
module AssocType where 
import Data.Word (Word8) 
import qualified Data.ByteString as S 
import Data.ByteString.Char8 () -- get an orphan IsString instance
-- import Text.Html -- this import didn't help with Content typeclass error. 
  
-- The goal here is to polymorphic a function so that it will work on more than just lists. We can do this via a type association. 

-- yesod will use associated types this way; there are more uses available in Haskell in general. 

class SafeHead a where -- "Safe" is caps because this is a Type we are working with. 
  type Content  a -- "a" leaving out a gets " assocType.hs:18:3: Number of parameters must match family declaration; expected 0 -- note that this was about five lines out of sync." 
 
  safeHead :: a -> Maybe (Content a) 
  
instance SafeHead [a] where 
  type Content [a] = a 
  safeHead [] = Nothing 
  safeHead (x:_) = Just x 

instance SafeHead S.ByteString where 
  type Content S.ByteString = Word8 
  safeHead bs 
      | S.null bs = Nothing 
      | otherwise = Just $ S.head bs 

main :: IO () -- leaving out unit (); "Expecting one more argument to `IO'" 
main = do 
  print $ safeHead ("" :: String) 
  print $ safeHead ("hello" :: String) 

  print $ safeHead ("" :: String) 
  print $ safeHead ("hello" :: String) 
-- p:11 -----------------------------------------
---- running in the console we get -----------
--  
-- runhaskell assocType.hs
-- Nothing
-- Just 'h'
-- Nothing
-- Just 'h' 
----------------------------------------------------

