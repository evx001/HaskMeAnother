## GHC 7.6.3


# if memory is the issue then add in a 4gig worth of temporary swapfile. NOTE: if you reboot this swapSpace will be gone.  
dd if=/dev/zero of=/swapfile bs=1M count=4096
mkswap /swapfile
swapon /swapfile

swapon -s   # reveals partition 

free        # will show all partition availability

df          # file sys usage 

# to check swappiness 
cat /proc/sys/vm/swappiness

#--------------------------------------------------
# ----@------------:/home/-----# dd if=/dev/zero of=/swapfile bs=1M count=1024
# 1024+0 records in
# 1024+0 records out
# 1073741824 bytes (1.1 GB) copied, 29.1029 s, 36.9 MB/s
# ----@------------:/home/-----# mkswap /swapfile
# Setting up swapspace version 1, size = 1048572 KiB
# no label, UUID=1f005af9-e22a-4653-927c-2990c15fe651
# ----@------------:/home/-----# swapon /swapfile
#-------------------------------------------------

##############################
## you'll need ghc 7.4 first ##
##############################

    apt-get install ghc 
# Install Ubuntu 12.04 depencies:
    $ sudo apt-get install make
    $ sudo aptitude install -y libgmp3c2
    $ sudo apt-get install libncurses5-dev ## maybe necessary to for curses.h missing 

# AFTERWARDS, DOWNLOAD, CONFIGURE, AND INSTALL ghc-7.6.3

    $ wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2
    $ tar xjvf ghc-7.6.3-src.tar.bz2
    $ cd ghc-7.6.3
    $ ./configure --prefix=/opt/ghc-7.6.3  

    $ make -j4          # replace with number of physical cores
            ## we are using single core confige 
# if no make just do sudo apt-get install make 




#====Error 2=during=make=on=remote=Ubuntu========
# on [62 of 68] Compiling Distrobution.Simple.Configure ( libraries/Cabal/Cabal/Distrobution/Simple/Configure.hs bootstrapping/Distrobution/Simple/Configure.o ) 
# killed 
# make[1]: *** [utils/ghc-cabal/dist/build/tmp/ghc-cabal] Error 137 
# make: *** [all] Error 2 
# 
# if make fails it could be a memory issue with 512mg-ram 
# ======Reran=make=and=got=diff=msg============

########################################################################
# Warning: Prelude: could not find link destinations for:
#     GHC.ForeignPtr.Finalizers Text.ParserCombinators.ReadP.P GHC.IO.Handle.Types.HandleType
# Warning: Control.Monad: could not find link destinations for:
#     Text.ParserCombinators.ReadP.P
# cd libraries && sh gen_contents_index --intree
#######################################################################


# we go and try to install anyway           
            
    $ sudo make install      # sudo might be necessary
# in 
# ~/.profile or ~/.bashrc
# add to path  
  # /opt/ghc-7.6.3/bin" 
# user path  
# PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin" 
  # global
# /etc/environment 
    # added in ghc7.6.3 path 
    # PATH="/opt/ghc-7.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# you might have issue the reboot command  
sudo reboot  
# or 
source ~/.bashrc # for making changes take effect in this session. 

# run ghci and you should get 7.6.3  
GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help


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

# Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.

## Cabal

# Cabal is included as part of Haskell Platform. Go ahead and update it:

    $ cabal update && cabal install cabal-install
    $ cabal-install --version

# Some useful packages:

    $ cabal install ghc-mod hoogle hlint pointfree 


#******************************************************
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
#******************************************************
#------------------------------------------------------
## ## ## ## ## YESOD INSTALL ## ## ## ## ## 

https://github.com/yesodweb/yesod/wiki/Cookbook
http://www.yesodweb.com/
# after installing haskell-platform 
sudo apt-get install haskell-platform

cabal update 


# cabal install yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals
#---------------------------------------------

# encountered an error with Persistent 1.3.0.4 


# cabal install yesod-platform 

# this is the force install 
# cabal install yesod-platform  --force-reinstalls 

ghc-pkg list 

ghc-pkg unregister <packageName | packageName-version>
# example  ghc-pkg  unregister  warp-2.1.2 

ghc-pkg check

yesod-core-1.2.9
tls-1.2.6
http-client-0.2.2.3
wai-extra-2.1.1
yaml-0.8.8
warp-2.1.2
conduit-1.0.17.1



Start your project:

   cd Yesogsoth && cabal install && yesod devel

or if you use cabal-dev:

   cd Yesogsoth && cabal-dev install && yesod --dev devel







Deprecated: "Use setOnException instead"
[18 of 20] Compiling Yesod.Core.Internal.LiteApp ( Yesod/Core/Internal/LiteApp.hs, dist/build/Yesod/Core/Internal/LiteApp.o )
