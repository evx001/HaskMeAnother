sys programming 
    large systems interacting 
    to replace C++ and Java 
    Rob Pike 
    concurrent and distirb sys
    evolving code base 
    easy build and deploy
    
GO for Android? 
fast 
    rt
    compile 
    native concurr
    Easy parallel 
        GIL lock in python 
        Node is single threaded 
        portable cross compile 
        static typing safety 
        50x faster than R 
        
    gofmt 
    interfaces over duck-typing 
    static run time compile 
    oneway to do it 
    
    java level inference 
    static declare is in function 
    you can have thunks 
    compiler wont let you create values that goes unassigned 
    GO mem manage 
        you can call C from within Go. 
    Var's are zero valued at init until assighment 
    forLoop/if 
    Explicit over implicit 
    returns errors 
    
Structs 
    All fields are defined at RT
    no inheritence 
    Nested Structs yes 

Interfaces 
    types are == if they same interface 
    
    Use the Struct 

    overloading NO

Concurrency 
    share mem by communicating 
    asysnc easy as sync 

GO routines  
    not threads 
    multiplexed 
    light

NOT THreads 
Not Processes 

Goroutines resemble sync code 
    unlike call-backs which act like GOTO statements 
    funct -> goroutine 

Channels 
    are for share / sync points 

built-in race detector 

Tool Chain and Libraries 
   batteries included

    image processing 
    image comp 

    xml parser 
    parse / send email 
    num tools 
    A TLS 1.0 server 

test coverage tool

gofmt 
    formatting 
    empressions deterministic 
    refactor

Data scraping 
    rate-limiting 
    tokenbucket
    
Cgo 
    C in Go 

go-json 

mgo -- mongoDB

redigo


 

