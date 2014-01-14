module Jan13 where 

Haskell: For A Faster, Safer and Stronger web. 
We are building with Bamboo and wood where we should be using steel.
Bamboo is flexable, wood is plentiful, poeple all over the world
build houses out of it. 
But when it comes to scaling up, 

[picture to a bamboo skyscraper]

they usually turn to steel and concrete.

Not that it can't be done, 
because many things are possible,
but if you are going to build such a thing.
You best have extra-ordinary skill and determination in doing it, 
you have in essence defy the odds. 
Php, NodeJs, Rails, Wordpress, Druple, Django, Joomla, etc.  
all require extra ordinary skill and effort to scale, 
and sometimes they don't.  

But I submit that Haskell would make that unnecessary. 

You can have flexability and strength in Haskell. 
First and formost as a background technology. 

There is all manner of building materials available, 
and for many bamboo and wood does the job. 
But if you want to build something that scales, better use steel. 

Like Ornette Coleman, I come to you as an upstart, 
to shake things up, to challenge assumptions. 
Because assumptions can leave you ass up.  

So what am I proposing, 
let Haskell watch your back. 

I can point to four companies that I know of personally, 
that use Haskell on their backend for day to day operations, 
but don't run a massive test suite to keep thier code safe, 
in fact they don't test at all.  

What? 
Yup. 

Why? 

Because proofs are proof enough. 
What do I mean by that? 
You test for where the edges are, the gray zone etc.
But with a mathmatical proofs there is no gray zone. 
Where you can proove you can be sure. 

In building any project that requires more than 3 developers, 
the odds that one the fourth will be an idiot is 
almost a one to one corilation.
As I put simple because some Idiot can, 
some idiot will, 
and sometimes late at night, 
that idiot is you!

We've all done it. 

But if the language you are using doesn't allow you to screw up, 
doesn't allow you to leave loose ends. 
And from the get go you have to cover your bases 
it might be harder to get going but but once you get there, 
you have actually arrived.  

I came to Haskell on my own after exploring 6 
other choices that each had one or more trade offs too many.

A robust Static Typing, and 

Then you would have to want to screw up. 





In all the technologies of the middle, 


{-
pYths n           = [(x,y,z)|   x <- [1..n],
                                y <- [1..n],
                                z <- [1..n],
                                x ^ 2 + y^2 == z^2]


-- nested guards 
concat [[(x,y) | y <- [4,5,6]]|x <- [1,2,3]]

sHift                       :: Int -> Char -> Char 
sHift   n c | isLower c     = int2low ((low2int c + n) `mod`26)
            | isUpper c     = int2upp ((upp2int c + n) `mod`26)
            | otherwise     = c 

fReqs                       :: String -> [Float] 
fReqs   xs                  = [percent (count x xs') n | x <- ['a'..'z']]
                                where 
                                    xs' = map toLower xs 
                                    n   = letters xs
------------------------------------------------------} 

