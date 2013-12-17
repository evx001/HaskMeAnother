module Main where 

headOfList (n:_)  = n
headOfList []     = Nothing 

greatestFactor n = headOfList factors'
    where factors  = [m | m <- [2..((abs n)-1)], n `mod` m == 0] 
          factors' = reverse factors 

getInput :: IO Int 
getInput = do 
    putStrLn "Enter a number..." 
    nAsString <- getLine 
    let n = read nAsString 
    return n 

printResult maybeR = case maybeR of 
    Just r -> do 
          let rAsString = show r 
          put  
