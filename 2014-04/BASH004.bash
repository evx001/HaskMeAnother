
# # adding base user 
# useradd -d /home/evxyz    -m evxyz   
 
# # set pw
# passwd evxyz

# as root add to sudo 
# sudo adduser <username> sudo

# if memory is the issue then add in a 2gig worth of temporary swapfile. NOTE: if you reboot this swapSpace will be gone.
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile && free
################################################################
# BASH001 # installs to get this file install git and:
# git clone https://github.com/evx001/HaskMeAnother 
  apt-get install ghc && apt-get install make && aptitude install -y libgmp3c2 && apt-get install libncurses5-dev && apt-get install htop && apt-get install mc


#************ SWAP will be need after every reboot *** 
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
# # YOU MIGHT HAVE ISSUE THE REBOOT COMMAND to get Bash to see it. 


# ./configure --prefix=/opt/ghc-7.6.3

# make 
#
# # run ghci and you should get 7.6.3
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# if not you might have to disable ghc-7.4 down in /usr/bin 

#********************** needed lib ************************
#    aptitude install -y libglc-dev freeglut3 freeglut3-dev



#@@@@@@@@@@@@@@@ haskell-platform @@@@@@@@@@@@@@@@@@@@@@@@@@

# cd  //home/ghc-7.6.3 &&   wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz  &&   tar xzvf haskell-platform-2013.2.0.0.tar.gz  &&   cd haskell-platform-2013.2.0.0  &&   ./configure --prefix=/opt/haskell-platform-2013.2.0.0
#//home/ghc-7.6.3/haskell-platform-2013.2.0.0# make
# ghc 7.6.3 has to be in the path or make wont see it
#     $ make -j4
#     $ sudo make install
#
# # Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.
# PATH="/opt/ghc-7.6.3/bin:/opt/haskell-platform-2013.2.0.0:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games" 

# ##  @@@@@@@@@@@@@@@@@ Cabal 18 is needed @@@@@@@@@@@@@@@@
#
# # Cabal is included as part of Haskell Platform. Go ahead and update it:
#
#     $ cabal update && cabal install cabal-install
#     $ cabal-install --version
#
# # Some useful packages:
#
# cabal install ghc-mod hoogle hlint snap 
#
#
#
# @@@@@@@@@@@@@@ package checking and de-listing @@@@@@@@@@@@@@
# # ghc-pkg list
#   ghc-pkg update
#
# # ghc-pkg unregister <packageName | packageName-version>
# # example ##  ghc-pkg  unregister  warp-2.1.2
#
#  
# #******************************************************
# /root/.cabal/bin 

# #******************************************************
# perm swap space 
# vim -N /etc/fstab
# -------------------> add in this to fstab 
#  /swapfile       none    swap    sw      0       0 
