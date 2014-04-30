module Splitz where 
import Data.List.Split.Internals

-- f("I am a strange loop") = "loop strange a am I" 

f = reverse "I am a strange loop"


-- splitOn “ “ “I am a strange loop”
f("I am a strange loop") = "loop strange a am I"

Prelude> let f = reverse "I am a strange loop"
Prelude> f
"pool egnarts a ma I"


let f002 x = map [x:[] |x <- "loop strange a am I"]


 let f002 x = zip [] "loop strange a am I"
Prelude> f002 4
Prelude> let f002 = splitAt 2  "loop strange a am I"
Prelude> f002
("lo","op strange a am I")

Prelude> let f002 = splitAt   "loop strange a am I"

splitOn “ “ “I am a strange loop”
[“I”,”am”,”a”,”strange”,”loop”]

module Splitz where 
import Data.List.Split.Internals

-- f("I am a strange loop") = "loop strange a am I" 

f = reverse "I am a strange loop"


-- splitOn “ “ “I am a strange loop”

*Splitz> :t splitOn
splitOn :: Eq a => [a] -> [a] -> [[a]]

f003= reverse  [[“I”], [“am”], [“a”] [“strange”] [“loop”]]

[“loop”], [“strange ”],[“a”], [“am”], [“I”]] 

  def f(str)
   str.split.reverse.join(' ')
 end
