module BmiTell where 

bmiTell weight height 
    | bmi <= skinny = "Under"
    | bmi <= normal = "Normal" 
    | bmi <= fat    = "OverWeight"
    | otherwise     = "congrats"
    where bmi = weight / height ^ 2 
	  skinny = 18.5 
     	  normal = 25.0
	  fat    = 30.0  
