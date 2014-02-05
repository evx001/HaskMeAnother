module Jan19Do where 
-- :   set expandtab ts=4 ruler number spell 
main:: IO ()
main = do  
    putStrLn "Hello"
    putStrLn "From Haskell" 
-- what's indented gets run 
x=3 -- is not indented so it doesn't get run 
    putStrLn "But what about this?" 
printThis = putStrLn "Print This!" 
    printThis 
    putStrLn "and" 
    printThis
