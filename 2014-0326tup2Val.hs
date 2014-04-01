module MaxList where 
{-
maxmin list =   if null (tail list) 
                then (head list, head list) 
                else (  if (head list) > fst (maxmin (tail list))
                        then head list 
                        else fst (maxmin (tail list )) 
                     ,  if (head list) < snd (maxmin (tail list)) 
                        then head list 
                        else snd (maxmin (tail list))
                     )
-} 
----------------------------------------------------
maxmin list =   let h = head list 
                in  if null (tail list) 
                    then (h, h) 
                    else ( if h > t_max then h else t_max 
                         , if h < t_min then h else t_min ) 
                         where  t = maxmin (tail list) 
                                t_max = fst t 
                                t_min = snd t 
