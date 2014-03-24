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

    $ make -j4          # replace with number of physical cores
			## we are using single core confige 
# if no make just do sudo apt-get install make 

sudo apt-get install make

sudo apt-get install libncurses5-dev ## maybe necessary to for curses.h missing 


#====Error 2=during=make=on=remote=Ubuntu========
# on [62 of 68] Compiling Distrobution.Simple.Configure ( libraries/Cabal/Cabal/Distrobution/Simple/Configure.hs bootstrapping/Distrobution/Simple/Configure.o ) 
# killed 
# make[1]: *** [utils/ghc-cabal/dist/build/tmp/ghc-cabal] Error 137 
# make: *** [all] Error 2 
# 
# if make fails it could be a memory issue with 512mg-ram 
# ======Rerun=make=and=get=diff=msg============

# if memory is the issue then add in a 1gig worth of swapfile. 
dd if=/dev/zero of=/swapfile bs=1M count=1024
mkswap /swapfile
swapon /swapfile
# to check swappiness 
cat /proc/sys/vm/swappiness
######################################################################################
# Warning: Prelude: could not find link destinations for:
#     GHC.ForeignPtr.Finalizers Text.ParserCombinators.ReadP.P GHC.IO.Handle.Types.HandleType
# Warning: Control.Monad: could not find link destinations for:
#     Text.ParserCombinators.ReadP.P
# cd libraries && sh gen_contents_index --intree
########################################################################################


# we go and try to install anyway			
			
    $ sudo make install      # sudo might be necessary
# in 
# ~/.profile or ~/.bashrc
# add to path  
# PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin" 
# /etc/environment
# you might have issue the reboot command  
sudo reboot  
# or 
source ~/.bashrc # for making changes take effect in this session. 




## Haskell Platform 2013.2.0.0

Install Ubuntu 12.04 depencies:

    $ sudo aptitude install -y libglc-dev freeglut3 freeglut3-dev

Haskell Platform Ubuntu dependencies:

    $ wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz
    $ tar xzvf haskell-platform-2013.2.0.0.tar.gz
    $ cd haskell-platform-2013.2.0.0
    $ ./configure --prefix=/opt/haskell-platform-2013.2.0.0

# ghc 7.6.3 has to be in the path or make wont see it
    $ make -j4
    $ sudo make install

Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.

## Cabal

Cabal is included as part of Haskell Platform. Go ahead and update it:

    $ cabal update && cabal install cabal-install
    $ cabal-install --version

Some useful packages:

    $ cabal install ghc-mod hoogle hlint pointfree 


*******************************************************
* Installation completed successfully.            
*
* Programs installed into:                        
*   /usr/local/bin
*
* Now do "cabal update" to initialize the package list                          
*
* Additional packages may be found at http://hackage.haskell.org
* or via "cabal list <pattern>"
*
* Use "cabal install <foo>" to install additional packages
*
*******************************************************

