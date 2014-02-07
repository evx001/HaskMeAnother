{- 
SkedgeMe  
API into Sephora Website 
41-K.L.O.C. 
Major Intractable Bugs 
Timezones 
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
   
Business layer -- so as not to double book, staff booked close to a local office.  
    so each piece of business logic cuts through the stack to a certain level.
    Time is coupled to a spacial index and is written at the raw-DB layer, otherwise where possible we abstract up. 

Tasks-General 
  Appointments    Biz <-M-M-M-M-> Raw-DB
  people          Biz <-M-M-M-M-> Raw-DB
  Notification    Biz <-M-M-M-M-M-> IO 
  -               Biz <-M-M-M-M-M-> IO 
Client Specific 
  Buy-and-Large   Biz <-M-M-M-M-> Raw-DB
  Client-B        Biz <-M-M-M-> DB
  -               Biz <-M-M-M-M-> Raw-DB 

Security ?? 




-}

