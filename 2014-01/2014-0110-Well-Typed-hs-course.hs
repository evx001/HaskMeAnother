{-- Well-Typed Haskell 2 day course 

Day 1 - Haskell Quick Tour
We start with a Quick Tour that provides an overview of all important Haskell language concepts, illustrates them using some very simple examples, and gives a feel for the syntax of the language.
The rest of Day 1 will be used for a more in-depth look at the most important aspects of the language, focusing on:


type-directed program development; 
	i.e. how to start from the type signature and systematically come up with a structurally recursive function definition; how to use pattern matching;
important Haskell datatypes, 
	including base types, lists, option and union types (Maybe and Either);
how to define your own 
	datatypes;
polymorphism 
	and overloading; how type inference works, and what we can learn from looking at a type signature; the most important type classes and how to work with them;
higher-order functions such as 
	maps, lists and folds; how to use anonymous functions, currying and partial applications, and how this is connected with list comprehensions;
an overview of the most fundamental libraries; 
	where and how to find predefined functions and how to read Haskell API documentation.

The goal of Day 2 
	is to expand the view from the basics of the language towards developing real-world applications in Haskell. We will look at:

Purity, explicit effects and IO; 
	how Haskell separates effectful operations from functions that are free of side effects, and what this is useful for; how to build interactive programs; how to structure the code in the presence of effects;
Tools and program structure; 
	how to best use the available tools such as the compiler and the interpreter; how to use tools to check and improve the quality of your code; how the module and package systems work; how and where to find new packages and libraries; some further helpful tools for the Haskell developer.
Testing; 
	the QuickCheck library as an example of a domain-specific language that is embedded into Haskell and that uses type classes and incorporates a specific effect (randomness); an overview of other testing and debugging methods.
Patterns for effects; introducing the Functor and Monad type classes by observing that many types have container-like properties, and that many types support a notion of sequencing; how to maintain state in a disciplined way; what can be gained by having an abstract Monad interface.

CODE: HASKELL-ADVANCED-01-02          DURATION: 2 DAY/S
This two-day Haskell course gives you the chance to deepen your understanding and master some of Haskell's more advanced concepts.

In this course, you will learn all about Haskell's evaluation mechanism and how to debug performance problems. You will learn what techniques and data structures to use for the most idiomatic and best performing code. We will discuss abstractions offered for both concurrency and high-level, deterministic parallel programming, enabled by Haskell's explicit side effects. There will be an in-depth look at Haskell's type system, helping you to understand how types can guide the user on how to correctly use complex code, and how to design your own libraries that can be used safely by others.


-----------------------------------------------------------
------------------------------------------------------------


LEARN HOW TO:
In this course, you will learn all about:
Haskell's evaluation mechanism and how to debug performance problems.
Techniques and what data structures to use for getting the most idiomatic and best performing code.
Abstractions offered for both concurrency and high-level, deterministic parallel programming, enabled by Haskell's explicit side effects.
Haskell's type system, helping you to understand how types can guide the user on how to correctly use complex code, and how to design your own libraries that can be used safely by others.
PROGRAMME
The course will cover the following topics:

Functional data structures

The difference between immutable (persistent) and mutable data structures.
Typical functional data structures and their performance.
Memory layout of Haskell data structures.
Reasoning about evaluation

How lazy evaluation really works.
The advantages and pitfalls of lazy evaluation.
Profiling Haskell programs.
Space leaks and how to fix them.
General advice on how to write Haskell code that performs well.
Concurrency and parallelism

Lightweight threads and communication between threads.
Software Transactional Memory for composable, lock-free concurrent programs.
Deterministic pure parallelism using the Par monad. Using Threadscope for debugging the performance of parallel code.
Programming patterns

Abstracting from recurring patterns.
Monads versus applicative functors.
Traversals of data structures.
How to write systematic compositional code on large user-defined datatypes.
Stacking effects: how to combine monads.
Monad transformers.
Type-level programming

Haskell's kind system: the types of types.
Higher-rank polymorphism.
Generalized algebraic datatypes and existential types.
How to use the powerful type system to capture complex invariants of your code and thereby eliminate sources of errors.

-}