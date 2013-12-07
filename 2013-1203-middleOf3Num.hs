module MidOf3Num where 
    import ListSort
    
    midOf3Num  a b c  = [a,b,c]
    ls                = [listSort ls | ls <- [midOf3Num a b c]]  
{-  *MidOf3Num> [listSort ls | ls <- [midOf3Num 4 2 5]]
    [[2,4,5]]

    midOf3Num   [a]    = listSort [a] 
    midOf3Num   [b]    = [b]!!11
    
------------------------------------------------
        *ListOf3Num> listOf3Num 33 1 22
            [33,1,22]
        *ListOf3Num> let ls = (listOf3Num 33 1 22)
        *ListOf3Num> ls
            [33,1,22]
        *ListOf3Num> listSort ls
            [1,22,33]
        *ListOf3Num> ls!!1
            1
        *ListOf3Num> let xs =  (listSort ls)
        *ListOf3Num> xs
            [1,22,33]
        *ListOf3Num> xs!!1
            22



    
    listOf3Num      []      = []
    listOf3Num  (n:ns)      (listOf3Num mAx ++ [n] ++ listOf3Num mIn)
                                where 
                                    mIn = [a| a <- ns, a <= n]
                                    mAx = [b| b <- ns, b > n] 
                                    


*MiddleOf3Num> middleOf3Num 5 6 7
    [5,6,7]      

let listOf3Num              =(middleOf3Num 5 6 7)      

    *MiddleOf3Num> maximum listOf3Num
        7
-- I either want to order as in quicksort, or . . . 
-- and then select the middle value. 

    *MiddleOf3Num> minimum listOf3Num
        5
-----------------------------------------        
      if - 
  
    *Main> listOf3Num!!0 == minimum listOf3Num
      True
    *Main> listOf3Num!!1 == minimum listOf3Num
      False
    *Main> listOf3Num!!2 == minimum listOf3Num
      False    
    *Main> listOf3Num!!0 == maximum listOf3Num
      False
    *Main> listOf3Num!!1 == maximum listOf3Num
      False
    *Main> listOf3Num!!2 == maximum listOf3Num
      True
midOf3      | listOf3Num!!0 == minimum listOf3Num   = 
                ?
            | listOf3Num!!1 == minimum listOf3Num   = ?
            | listOf3Num!!2 == minimum listOf3Num   = ? 
            | listOf3Num!!0 == maximum listOf3Num   = ?
            | listOf3Num!!1 == maximum listOf3Num   = ? 
            | listOf3Num!!2 == maximum listOf3Num   = ?
-}
{-*Dec3> let middleOf3Num' t t1 t2 = [t,t1,t2]
  *Main> let listOf3Num = middleOf3Num' t t1 t2
 -*Main> listOf3Num
      [1,11,230]
-}
-- [x | x <- [middleOf3Num' t t1 t2]]
--      listOf3Num              = (middleOf3Num' t t1 t2) 
--       middleOfList3           =  middleOf3Num'!!1 