{-

see 

http://www.youtube.com/watch?v=92vH1V9PqtI

data Nat = Zero 
          | Suc Nat 

(+) :: Nat -> Nat -> Nat 
x + Zero = x 
x + Suc y = Suc (x + y) 

(*) :: Nat -> Nat -> Nat 
x * Zero = Zero 
x * Suc y = x + (x * y) 

one = Suc Zero 
two = Suc one
three = Suc two 
four = Suc three   
---------------------}
