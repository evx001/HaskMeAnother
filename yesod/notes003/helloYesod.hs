-- module YesodHi where
-- !! to run this ---> runhaskell filename.hs
{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-} 

import Yesod
data YesodHello = YesodHello 
mkYesod "YesodHello" [parseRoutes| / HomeR GET
|]
instance Yesod YesodHello 

getHomeR :: Handler Html -- RepHtml depricated 
getHomeR = defaultLayout [whamlet|YesodHello!|] 
main :: IO () 
main = warp 3000 YesodHello
