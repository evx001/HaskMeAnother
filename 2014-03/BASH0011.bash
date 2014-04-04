################################################################
# BASH001 # installs to get this file istall git and:
# git clone https://github.com/evx001/HaskMeAnother
#    apt-get install ghc && apt-get install make && aptitude install -y libgmp3c2 && apt-get install libncurses5-dev && apt-get install htop && apt-get install mc

# BASH001.bash
# dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile && free

# if memory is the issue then add in a 4gig worth of temporary swapfile. NOTE: if you reboot this swapSpace will be gone.
# dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile &&  swapon -s   # reveals partition

##############################
## you'll need ghc 7.4 first ##
##############################

# AFTERWARDS, DOWNLOAD, CONFIGURE, AND INSTALL ghc-7.6.3

# wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2 && tar xjvf ghc-7.6.3-src.tar.bz2 && cd ghc-7.6.3

# make


# make install      # sudo might be necessary


# # add to path
#   # /opt/ghc-7.6.3/bin"
# # user path
# # PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin"
#   # global
# # /etc/environment
#     # added in ghc7.6.3 path
#     # PATH="/opt/ghc-7.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# # YOU MIGHT HAVE ISSUE THE REBOOT COMMAND


# ./configure --prefix=/opt/ghc-7.6.3

# make -j4          # replace with number of physical cores
#
# # run ghci and you should get 7.6.3
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help



#    aptitude install -y libglc-dev freeglut3 freeglut3-dev

############### all of GHC 7.4.1 # must go ################
 ## /usr/bin# mv ghc-pkg-7.4.1 ghc_bak/ghc-pkg-7.4.1 #####
  #######################################################
   ## /usr/bin# mv ghc-pkg ghc_bak/ghc-pkg       #####
    ###################################################


# Haskell Platform Ubuntu dependencies:
#
 cd  //home/ghc-7.6.3 &&   wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz  &&   tar xzvf haskell-platform-2013.2.0.0.tar.gz  &&   cd haskell-platform-2013.2.0.0  &&   ./configure --prefix=/opt/haskell-platform-2013.2.0.0
#//home/ghc-7.6.3/haskell-platform-2013.2.0.0# make
# ghc 7.6.3 has to be in the path or make wont see it
#     $ make -j4
#     $ sudo make install
#
# # Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.
# PATH="/opt/ghc-7.6.3/bin:/opt/haskell-platform-2013.2.0.0:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games" 
# ## Cabal
#
# # Cabal is included as part of Haskell Platform. Go ahead and update it:
#
#     $ cabal update && cabal install cabal-install
#     $ cabal-install --version
#
# # Some useful packages:
#
#     $ cabal install ghc-mod hoogle hlint
#
#
# #******************************************************
# # Installation completed successfully.
# #
# ## ## ## ## ## YESOD INSTALL ## ## ## ## ##
#
# # after installing haskell-platform
#
#
# cabal update
#
#
# cabal install yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals
# #---------------------------------------------
#
# # encountered an error with Persistent 1.3.0.4
#
#
# # cabal install yesod-platform
#
# # this is the force install
# # cabal install yesod-platform  --force-reinstalls
#
# # ghc-pkg list
#
# # ghc-pkg unregister <packageName | packageName-version>
# # example  ghc-pkg  unregister  warp-2.1.2
#
# # Start your project:
#
#  #  cd ######### && cabal install && yesod devel
#
# #or if you use cabal-dev:
#
