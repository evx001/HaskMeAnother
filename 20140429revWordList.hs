module RevWordList where
import qualified Data.Text as T  
import Text.Parsec.Char  
-- "Reverse this list" 
--

lst1 	= "Reverse this list word by word"  

fn001 	= head $ reverse lst1 
fn002   = tail $ reverse lst1
 
fn003 :: Int
fn003   = length $ reverse lst1  
-- *RevWordList> [x|x<-fn002,x/=' ']
-- "rowybdrowtsilsihtesreveR"

