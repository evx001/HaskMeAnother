module VerseRe where

verseRe		:: [a] -> [a] 
verseRe 	[] = [] 
verseRe 	(x:xs) = verseRe xs ++ [x]  
