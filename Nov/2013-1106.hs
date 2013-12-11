{-# LANGUAGE NoMonomorphismRestriction #-}
{-
 -                    -XNoMonoPatBinds
 -
 - HASKELL TABS MUST BE SET TO ts=8 or the alignment will be off.
 - you can set tabs to = spaces // in vim \\ :set expandtab 

 -Multi-line expressions are permitted with the use of :set +m and being sure to indent.
*PrImEs> let odds n = map f [0..n - 1] 
*PrImEs|              where f x = x * 2 + 1 
*PrImEs| 
*PrImEs> 
-- Offside Rule in Haskell source files. 
-- first top level declaration can start in any column 
-- every subsiquent top-level declaration must have same indent 
-- an empty following line is treated part of the preceding line 
--
-- Let and Where are similar 
--  next token indent 
--
-- file: ch03/Indentation.hs
foo = let firstDefinition = blah blah
          -- a comment-only line is treated as empty
                               continuation blah
          -- we reduce the indentation, so this is a new definition
          secondDefinition = yada yada

--                            continuation yada
      in whatever 

-- file: ch03/letwhere.hs
bar = let b = 2
          c = True
      in let a = b
         in (a, c)

-- guards, put them all on one line (guards do not care about spacing)

let abs n | n >= 0 = n | otherwise = -n

--definitions on one line 
let { fact 0 = 1 ; fact n = n * fact (n-1) }

-- multiline input      :{ ... :} 

-} 
