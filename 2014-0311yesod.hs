module Yesod where 
--------------------------------------------------------------------
-- haskcat1@HaskUntu2:~/HaskMeAnother$ cd yesod/
-- haskcat1@HaskUntu2:~/HaskMeAnother/yesod$ ~/.cabal/bin/yesod init 
-- Project name: yogsothoth 
-- cd yogsothoth
---------------------------------------------------------------- 
-- cabal-dev install && yesod --dev devel 
----------------------------------------------------------------

----------------------------------------
------ CONSOLE OUTPUT ---------------
{- -------------------------------------------------------------
haskcat1@HaskUntu2:~/HaskMeAnother$ cd yesod/
haskcat1@HaskUntu2:~/HaskMeAnother/yesod$ ~/.cabal/bin/yesod init 

Welcome to the Yesod scaffolder.
I'm going to be creating a skeleton Yesod project for you.

What do you want to call your project? We'll use this for the cabal name.

Project name: yogsothoth 
That was not a valid entry, please try again: Yosothoth 
That was not a valid entry, please try again: yogsothoth
Yesod uses Persistent for its (you guessed it) persistence layer.
This tool will build in either SQLite or PostgreSQL or MongoDB support for you.
We recommend starting with SQLite: it has no dependencies.

    s      = sqlite
    p      = postgresql
    pf     = postgresql + Fay (experimental)
    mongo  = mongodb
    mysql  = MySQL
    simple = no database, no auth
    url    = Let me specify URL containing a site (advanced)

So, what'll it be? s
That's it! I'm creating your files now...

---------------------------------------

                     ___
                            {-)   |\
                       [m,].-"-.   /
      [][__][__]         \(/\__/\)/
      [__][__][__][__]~~~~  |  |
      [][__][__][__][__][] /   |
      [__][__][__][__][__]| /| |
      [][__][__][__][__][]| || |  ~~~~
  ejm [__][__][__][__][__]__,__,  \__/


---------------------------------------

The foundation for your web application has been built.


There are a lot of resources to help you use Yesod.
Start with the book: http://www.yesodweb.com/book
Take part in the community: http://yesodweb.com/page/community


Start your project:

   cd yogsothoth && cabal sandbox init && cabal install --enable-tests . yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals && yesod devel
haskcat1@HaskUntu2:~/HaskMeAnother/yesod$ 
haskcat1@HaskUntu2:~/HaskMeAnother/yesod$ ls
yogsothoth
haskcat1@HaskUntu2:~/HaskMeAnother/yesod$ cd yogsothoth/
haskcat1@HaskUntu2:~/HaskMeAnother/yesod/yogsothoth$ ls
app             devel.hs       messages     static
Application.hs  Foundation.hs  Model.hs     templates
config          Handler        Settings     tests
deploy          Import.hs      Settings.hs  yogsothoth.cabal
haskcat1@HaskUntu2:~/HaskMeAnother/yesod/yogsothoth$ cabal-dev install && yesod --dev devel 
cabal-dev: command not found
-}
