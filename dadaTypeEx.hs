module DataTypeEx where 
data Mood = Sleepiness  { yawnDepth :: Int}
	        | Munchiness  { stamachVolume :: Int } 
          | Chattiness  { annoyingnessFactor :: Int }
          | CodingFrenzy
    deriving (Show) 
 
data Maybe a  = Nothing 
              | Just a 

