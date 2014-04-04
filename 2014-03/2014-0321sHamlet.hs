-- sHamlet is different 
-- prefixed with an “s” 
-- quasiquoter is shamlet and the external file function is shamletFile. 
-- No URL interpolation is allowed, with sHamlet  
-- rule is that the embedded value must have the same type as the template itself.
-- we use underscore interpolation.
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedStrings #-}
import Data.Text (Text)
import qualified Data.Text as T
import Text.Hamlet (HtmlUrlI18n, ihamlet)
import Text.Blaze (toHtml)
import Text.Blaze.Renderer.String (renderHtml)

data MyRoute = Home | Time | Stylesheet
renderUrl :: MyRoute -> [(Text, Text)] -> Text
renderUrl Home _ = "/home"
renderUrl Time _ = "/time"
renderUrl Stylesheet _ = "/style.css"

data Msg = Hello | Apples Int

renderEnglish :: Msg -> Text
renderEnglish Hello = "Hello"
renderEnglish (Apples 0) = "You did not buy any apples."
renderEnglish (Apples 1) = "You bought 1 apple."
renderEnglish (Apples i) = T.concat ["You bought ", T.pack $ show i, " apples."]
template :: Int -> HtmlUrlI18n Msg MyRoute
template count = [ihamlet|
$doctype 5
<html>
<head>
    <title>i18n
    <body>
        <h1>_{Hello}
            <p>_{Apples count}

                         |]
-- This kind of a template now needs some way to turn those values into HTML. So just like type-safe URLs, we pass in a render function
-- we define a new type synonym: 
--
main :: IO () 
main = putStrLn $ renderHtml 
     $ (template 5) (toHtml . renderEnglish) renderUrl 
type Render url = url -> [(Text, Text)] -> Text
type Translate msg = msg -> Html
type HtmlUrlI18n msg url = Translate msg -> Render url -> Html
