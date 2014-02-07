module Feb01 where 
-- : set spell ts=4 number expandtab
{-
The 480 minute CS Degree, for Noobs, Boobs, PMs, and anyone else who just needs to know.  
    first 7200 seconds 
            ON/OFF & a cyanide apple      
            Turing Machine Heads 
            Reading and Writing is Fundamental
            Erase  
            How do I turn this damn thing off?
        50s Fortran - Algol - John McCarthy and LISP  
        60s - 70s - 80s - 90s - 00s - Today and Tomorrow
                TIOBE Index 

            Why you owe everything to a guy you never heard of (DR)
                    programing Languages Benchmark game. 

                UNIX, BSD and LINUX and everything else. 
                 C -> C++ -> Java -> C# 
                / \           \        \
             (Go) |           (Scala)   F#
                  | 
                   Obj-C & "what the @#$% was Jobs thinking?" just blame it all on Smalltalk    
        -- Paul Graham, OOP and The SmallTalk Murder Mystery? 
            Help my procedure is toooo complicated 
                oops!
            Abstraction hierarchy 
            the right idea is worth 80 IQ points. 
        -- The bloated middle   
            Let Me interpret that for you         
                Perl 
                Php 
                    wordpress drupal 
                JS (CSS - HTML) 
                Web Frameworks ShootOut
                NodeJs 
                Ruby 
                    rails 
                Python 
                    flask django
                LAMP everywhere 
                M V C
                SQL my and others
                mongoDB and others  
        -- Church of Lambda Calc (LISP) and friends  
                Interpreting 
                expressivity  
                Idiosyncratic incomprehensibility
                    teams of 3 or smaller 
                emacs 
        -- Prolog or couldn't I just ask? 
                the third way 
                declarative 
                F.R.P.? 
        
    II. The Church of Lambda Calc and all the math you'll ever need
        assoc-dest-commut-etc.
	    Haskell math
            ghci 2 + 2  
            let 
            && || 
            =
            == 
            /=
            succ 
            min 
            max 
-}
            fn001 x y = x + x / y
            fn001' 
            fn002 x = if x > 100 
                        then x 
                        else x*2 
            fn003 x = (if x > 100 then x else x^2) +1 
            fn004 x = "Call Me Ishmael" 
            fn005 y = ["Call Me Ishmael"] 
            fn006 z = ["Call","Me","Ishmael"] 
            fn007   = [1..101] 
            fn008   = [10,20..1000]
            fn009 = fn007 ++ fn008 
            Cons    (:) '1':"2"
            empty = []
--          !! 
--          let
            <
            >
            <=
            >= 
        Functions 
            purity 
        Recursive 
        not your dad's LISP - Lists 
        Functions on Lists 
{-          head tail init last 
            length null reverse take drop 
            maximum minimum
            sum 
            product 
            elem 
            ["a".."z"] 
            don't try this at home [1.0..2.0]
            cycle 
            repeat
            replicate 
            [x^2 | x <- [1..10] , x*3 >= 12]
            take 15 [x^2 | x <- [2,4..] , x `mod` 2==0] 

        Data Structures "structs" 
            Tuples & mongoDB 
            Key Value pairs 
            fst snd zip  
        Int Integer Float Double Bool Char
        a t x xs f () 
        Eq Ord Show Read Enum Bounded Num Integral Floating  
        Pattern Matching 
        Guards 
        Case -- Switching 
        Let Where 
        Whitespace 
        Lazy 
        H. O. F. 
        the Value of a Function 
        some work and then some more (partial eval)
        (+)
        Map     -- Google 
        Filter 
        Fold    -- reduce
        zip 
        Lambda express 
        Function Operators 

    III. Why I'm not teaching you Scheme or Clojure or Ruby or Python  
        Types 
            Static 
            Dynamic (ducks)
        oops let me clean that up NOT! 
        TDD
        Fragility 
        the Four Horsemen of the Parallel Apocalypse 
        GHCI -> lets play   
        The Hell of Dante's inferring 
            Explicit typing  
        Polymorphic 
        Class Constraints & Interfaces 
            no kaka in no kaka out 
        Customer Types 
            Type Syn
            NewType 
            Records 
            Algebraic Data Types & Constructors 
            Parameterized Types  
        Type Classes 
            Instances 
                parameterized 
            Defining type classes 
            SubClasses         
        
    IV. -- IO or the world is a dangerous place    
        State and Kaka 
        TDD again? 
        Hello World 
        IO Actions 
        Do Blocks 
        IO Values 
        Return Functions 
        Useful IO Actions 
        Program Organization
        

