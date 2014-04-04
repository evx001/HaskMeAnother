## GHC 7.6.3

##############################
## might need ghc 7.4 first ##
##############################

# Install Ubuntu 12.04 depencies:

    $ sudo aptitude install -y libgmp3c2

# Afterwards, download, configure, and install GHC.

    $ wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2
    $ tar xjvf ghc-7.6.3-src.tar.bz2
    $ cd ghc-7.6.3
    $ ./configure --prefix=/opt/ghc-7.6.3  

    $ make -j4          # replace with number of physical cores
			## we are using single core confige 



	$ sudo apt-get install libncurses5-dev ## maybe necessary to for curses.h missing 

######################################################################################
# Warning: Prelude: could not find link destinations for:
#     GHC.ForeignPtr.Finalizers Text.ParserCombinators.ReadP.P GHC.IO.Handle.Types.HandleType
# Warning: Control.Monad: could not find link destinations for:
#     Text.ParserCombinators.ReadP.P
# cd libraries && sh gen_contents_index --intree
########################################################################################

# we go and try to install anyway			
			
    $ sudo make install      # sudo might be necessary


# even though we had the errors the make install worked.

Add `/opt/ghc-7.6.3/bin` to `$PATH`.

# where for path? 
# ~/.profile or ~/.bashrc
# .bash_login
# .bash_profile 
# /etc/profile
## Haskell Platform 2013.2.0.0

# Install Ubuntu 12.04 depencies:

    $ sudo aptitude install -y libglc-dev freeglut3 freeglut3-dev

# Haskell Platform Ubuntu dependencies:

    $ wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz
    $ tar xzvf haskell-platform-2013.2.0.0.tar.gz
    $ cd haskell-platform-2013.2.0.0
    $ ./configure --prefix=/opt/haskell-platform-2013.2.0.0

# ghc 7.6.3 has to be in the path or make wont see it
    $ make -j4
    $ sudo make install

# Add to path 
	`/opt/haskell-platform-2013.2.0.0/` to `$PATH`.

## Cabal

# Cabal is included as part of Haskell Platform. Go ahead and update it:

    $ cabal update && cabal install cabal-install
    $ cabal-install --version

# Some useful packages:

    $ cabal install ghc-mod hoogle hlint pointfree 


*******************************************************
# Installation completed successfully.            
#
# Programs installed into:                        
#   /usr/local/bin
#
# Now do "cabal update" to initialize the package list                          
#
# Additional packages may be found at http://hackage.haskell.org
# or via "cabal list <pattern>"
#
# Use "cabal install <foo>" to install additional packages
#
*******************************************************

