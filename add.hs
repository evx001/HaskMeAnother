module Add where
add :: Num a => a -> a -> a 
add = (+)
divide = (/)

foo = add 2 (divide 4 5)
