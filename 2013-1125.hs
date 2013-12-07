module Nov25 where 

*Nov25> [(x * 2) | x <- [0,5.9..10]]
-- [0.0,11.8,23.6]
-- it :: [Double]


























-- Haskell Users Group. 
-- Template Haskell for DSL? 
--      There is room for better support. 
--
-- Lesson For EDSL design 
--      monoid talk 
-- Brent Yorgey is a PhD student in the Programming Languages group at the University of Pennsylvania.
--      domain analysis is hard 
--      April 2008 
--      Inkscape wasn't enough
--      Asymptote 
--      MetaPost 
--      PGF/TikZ
--
--      A two week Hack 
--              bounding boxs was baked in limitation
--
--              arrows 
--
--      Vectors 
--              type Path = [Vector]
-- better
--              type Path = [Segment]
--      closedness? 
--              
--              type Path = ([Segment], Bool)
--
--
--      data Offset c v where
--         OffsetOpen :: Offset Open v
--         OffsetClosed :: v -> Offset Closed v 
--
--      data Segment c v = Linear . . . . . . 
