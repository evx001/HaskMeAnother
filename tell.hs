module Tell where 
tell :: (Show a) => [a] -> String
tell [] = "empty" 
tell (x:[]) = "list is only " ++ show x 
tell (x:y:[]) = "list of  " ++ show x ++ " and " ++ show y 
tell (x:y:_) = "list is longer than just " ++ show x ++ " and " ++ show y  


