module RevWordList where
import qualified Data.Text as T  
import Text.Parsec.Char  
-- "Reverse this list" 
--

lst1 	= "Reverse each word but not the word order only"  

fn001 	= reverse lst1 
fn002   = tail $ reverse lst1
 
fn003 	:: Int
fn003   = length $ reverse lst1  

-- pulls out all the spaces 
-- fn004 =  [x:[]|x<-fn001, x == ' ']
fn004 =  [x:[]|x<-fn001, if x == ' 'then x:[] else x ]


-- [" "," "," "," "," "," "," "," "]

