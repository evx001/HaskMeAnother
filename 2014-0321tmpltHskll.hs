module TmpltHskll where 

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-} 
import Text.Lucius (CssUrl, luciusFile, luciusFileDebug, renderCss) 
import qualified Data.Text as T
import qualified Data.Text.Lazy.IO as TLIO

data MyRoute = Home | Time | Stylesheet 

render :: MyRoute -> [(Text, Text)] 
render Home _ = "/home" 
render Time _ = "/time" 
render Stylesheet _ = "/style.css" 

-- 7.3.2. The magic hash -- The language extension -XMagicHash allows "#" as a postfix modifier to identifiers. Thus, "x#" is a valid variable, and "T#" is a valid type constructor or data constructor.
--
--

template :: CssUrl MyRoute 
#if PRODUCTION 
template = $(luciusFile "template.lucius") 
#else 
template = $(luciusFile "template.lucius") 
#endif 

main :: IO () 
main = TLIO.putStrLn $ renderCss $ template render 
-- @template.lucius
foo { bar: baz}  
