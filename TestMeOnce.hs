-- The Code Exorcist. 
--    Excises demons from code. 
-- the more forgiving the language the more skill you need to be to use it well. 
-- yet it also allows the most unskilled to pick it up that is why it is so attractive to so many.

{- 
-------------------
Say it Once
Single Responsibility
--------------------
Open/Closed
Liskov Substitution
Interface Segregation 
Dependency Inversion  
---------------------
same logic ->   abstraction
same steps->    automation
---------------------
SINGLE RESPONSIBILITY == easy to reason about
    easy for you but what about others
        a "but" or an "and" can indicate hidden extra responsibilities
    class ->
        entirely contains object
            object is in charge of one thing
*   classes change for a singular reasons only

Example responsibilities
    persistence
    Validation
    Notification
    Error Handling
    Logging
    Class Selection / Construction
    Formatting 
    Parsing 
    Mapping
    
Aspect programming? 
    + SINGLE RESPONSIBILITY -> yes

Coupling is the Devil
    objects entwined  
        separate their tasks

Extract Class 
Move Method

Classes open for extension but closed for modification
    add along the seams, parametrize Method,
        Form Template Method 
        Extract Interface
think of a search and it's predicate
    you don't change the search itself
        but changing the predicate yields different results
Classes should retain the behaviour of their base class 
        NO SUPRISES PLEASE! -- says Ms. Liskov
        NO NEW EXCEPTIONS PLEASE 
        BASE TYPE MUST REFLECT ACTUAL TYPE
            you shouldn't have to look it up.

Re-factoring begins at base/home
    Collapse Hierarchy 
    Move up/down the Field
    Mive up/down the Method

Interface Segregation Principle 
24:00








        
