## GHC 7.6.3

##############################
## might need ghc 7.4 first ##
##############################

Install Ubuntu 12.04 depencies:

    $ sudo aptitude install -y libgmp3c2

Afterwards, download, configure, and install GHC.

    $ wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2
    $ tar xjvf ghc-7.6.3-src.tar.bz2
    $ cd ghc-7.6.3
    $ ./configure --prefix=/opt/ghc-7.6.3  
## broke 
    $ make -j4          # replace with number of physical cores
    $ make install      # sudo might be necessary

Add `/opt/ghc-7.6.3/bin` to `$PATH`.

## Haskell Platform 2013.2.0.0

Install Ubuntu 12.04 depencies:

    $ sudo aptitude install -y libglc-dev freeglut3 freeglut3-dev

Haskell Platform Ubuntu dependencies:

    $ wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz
    $ tar xzvf haskell-platform-2013.2.0.0.tar.gz
    $ cd haskell-platform-2013.2.0.0
    $ ./configure --prefix=/opt/haskell-platform-2013.2.0.0
    $ make -j4
    $ sudo make install

Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.

## Cabal

Cabal is included as part of Haskell Platform. Go ahead and update it:

    $ cabal update && cabal install cabal-install
    $ cabal-install --version

Some useful packages:

    $ cabal install ghc-mod hoogle hlint pointfree
