module Dec31 where 

-- safetail xs = if xs==[] then []  else [0]
safetail xs = if xs==[] then []  else if [(div (length xs) 2)] then True else False 

