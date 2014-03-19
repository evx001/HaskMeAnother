{- module TypeSafeUrls where 
 

-- Haskell provides type safe URLs 
type Text = [Char] 
type Time = [Char] 

data MyRoute = Home | Time 

-- the data constructor generates a coressponding rendering function. 

renderMyRoute :: MyRoute -> Text 
renderMyRoute Home = "http://example.com/profile/home" 
renderMyRoute Time = "http://example.com/display/time" 


type Query = [(Text, Text)] 
type Render url = url -> Query -> Text 


<body> 
    <p>Some paragraph.
    <ul> 
        <li> Item 1
        <li> Item 2
    <p> 
        Paragraph # 
        <i>italic 
        \ end.

-- interpolation 
    
    <head> 
        <title>#{title} 
-} 
-- ignoring the quasi-quote for now 
{-# LANGUAGE QuasiQuotes #-}  
import Text.Hamlet (shamlet) 
import Text.Blaze.Renderer.String (renderHtml) 
import Data.Char (toLower) 
import Data.List (sort) 

data Person = Person 
    { name :: String 
    , age  :: Int 
    } 
main :: IO () 
main = putStrLn $ renderHtml [shamlet| 
<p>Hello, my name is #{name person} and I am #{show $ age person}.
<p> 
    Let's do the funny here: # 
    <b>#{sort $ map toLower (name person)} 
<p>Oh, and in 5 years I'll be #{show (5 + (age person))} years old. 
|] 
    where 
        person = Person "Michael" 26 

 
