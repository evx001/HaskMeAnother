module XYZ where 

fn001 :: (a -> b) -> (b -> c) -> (a -> c); 
fn001 g h = \x -> h (g x) 

-- fn002 :: (Show a) => a -> String 


-- showsPrec :: Show a => Int -> a -> ShowS

fn002 :: (Show a) => a -> String 
fn002 x = ""  
-- Prelude> let f :: Int -> String -> Int;  


