module IncreaseYr where 
-- csDegMatCostByYr:
oneYr= [ 99.35,
 21.11,
 32.40,
 27.00,
 190.60, 
 219.60,
 89.70,
 127.10,
 21.11,
 117.65, 
 166.80,
 255.60,
 134.10 ] -- Est. Cost of books/fees for 1 year of Computer Science (BA) Degree @ WSU 
 
increaseYr  yr  | yr == 2013 =  yr1 + ( yr1 * percent)
                | yr == 2014 =  yr1 + ( yr1 * percent)+ ( yr1 * percent)               
                | otherwise  =  yr1
                                where 
                                    yr1 = (sum oneYr)
                                    percent = 0.15
 
 
