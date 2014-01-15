module Jan13 where 

Haskell: For A Faster, Safer and Stronger web. 
Currently we are building with Bamboo where we should be using steel.
Bamboo is flexible, plentiful, perfectly useful shelters are built with both.  
But when it comes to scaling up, 

[picture to a bamboo skyscraper]

They usually turn to steel and concrete.
Not that it can't be done;  
But if you are going to build that way;
you best have extra-ordinary skill 
plus a resolute determination 
and a vice-like control over your crew.
You must in effect defy the odds. 
Php, NodeJs, Rails, Wordpress, Druple, Django, Joomla, etc.  
all require skill, effort, and focus to do well. 
Yet unintentionally they allow less credible practitioners to code it poorly, and it will sort of work. 
Usually if you want to build something that scales, steel, is a better choice. 
I propose letting Haskell watch your back. 

I can point to four companies that I know of personally, 
that use Haskell on their back end for day to day operations, 
but don't run a massive test suite to keep their code safe, 
in fact they barely test at all.  
Why? 

The basic design of the language
     
[slide of type hierarchies]
 
note the white space between the internal and the external. 
monads: 
That you have to build the connection to the outside world; 
external access isn't taken for granted. 
There are no other paths in. 
Back doors are effectively closed and locked.
Iteration and mutability is confined to the equivalent of a bubble chamber.
State doesn't leak out of the container and smear itself all over the program.     

ultra Strong-Typing* and 
proofs.

Because proofs are proof enough. 
What do I mean by that? 
You test for where the edges are, the gray zone etc.
But with mathematical certainty, there is no gray zone. 
Where you have proof you have tested even the edge-cases. 

In building any project that requires more than 3 developers, 
   the odds that one out of the fourth will be an idiot (unteachable and unreliable or just plain sloppy). 
As I put simply because some Idiot can, 
some idiot will, 
and sometimes after a rough night or late the same night,  
that idiot is you!

We've all done it. Pushed code to production, we shouldn't have. 

But if the language you are using doesn't allow you to screw up; 
doesn't allow you to leave loose ends, and messes. 

And from the get go you have to think through your problem;
it might be harder to get going but but once you get there, 
you've actually arrived.  

I came to Haskell on my own after exploring the other 
choices and finding that each had too many trade offs. 

A robust Static Typing, and 

Then you would have to want to screw up. 
The technologies of the middle, those that have Cherry picked Lisp but remain their tied to C.   

 

If you want flexibility as your first and primary feature 
    then there are other more far reaching choices like Clojure, and many other dynamically typed options.  

Haskell is open sourced. 
The technologies of the middle are somewhat more flexible than Statically typed languages they just let you do things that might require debugging later, when strange errors appear, or data gets in inexplicably lost. 


Currently serves an even smaller niche, so small there are as yet no books on the subject that aren't ten years out of date. 
  
 

        


The other options like F# and Ocaml both somewhat less elegant choices also make potentially Faustian bargains with practicality.
 One binds you to a Microsoft framework which will not always play well with non-Microsoft technologies, not to mention the licencing fees, that have driven some companies that I know to LAMP stacks.
