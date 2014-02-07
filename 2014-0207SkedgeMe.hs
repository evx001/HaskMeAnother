{- 
SkedgeMe  
Api into Sephora Website 
41-k.l.o.c. 
Major Intractable Bugs 
TimeZones 
Recurring Events 
Notifications 
***Double-Bookings 
No Doc 
** Bad Performance
    interactive-es 60 sec load time  
Inflexible 
No Client Based Solutions 
    Netscape approach 
        rewrite it? 
Monads 
   help with abstracting software into layers.
    Starting at the IO layer 
        
IO layer, the usual IO, State-full, messy, imperative like IO actions which are hard to reason about. 
A raw DB layer 
SQL interface this makes for strict ACID guarantees between transactions
No Side Effects -- during transactions 
--so no email confirmations sent because what if a transaction needs to be rolled back, you can't call back the email. 
Optimistic locking at the DB layer, to support Auto Retries but you don't want to be sending emails for tries, only successes. 
This Raw-DB layer gives concurrent guarantees in our cluster.
A Second Monad, a DB-monad over the Raw SQL, an IO ref, can use any Haskell Algebraic Data Types you want to use. & CRUD caching validation  

A Security Monad -- who is performing the action -- it makes sure that the person is legally allowed to perform the given transaction.   
    


-}

