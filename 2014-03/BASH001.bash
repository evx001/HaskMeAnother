# BASH001.bash 


# if memory is the issue then add in a 4gig worth of temporary swapfile. NOTE: if you reboot this swapSpace will be gone.  
dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile &&  swapon -s   # reveals partition 

##############################
## you'll need ghc 7.4 first ##
##############################

# Install ghc && Ubuntu 12.04 depencies:
apt-get install ghc && apt-get install make && aptitude install -y libgmp3c2 && apt-get install libncurses5-dev ## maybe necessary to for curses.h missing 

# AFTERWARDS, DOWNLOAD, CONFIGURE, AND INSTALL ghc-7.6.3

wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2 && tar xjvf ghc-7.6.3-src.tar.bz2 && cd ghc-7.6.3 




# make install      # sudo might be necessary


# # add to path  
#   # /opt/ghc-7.6.3/bin" 
# # user path  
# # PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin" 
#   # global
# # /etc/environment 
#     # added in ghc7.6.3 path 
#     # PATH="/opt/ghc-7.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# # you might have issue the reboot command  


# ./configure --prefix=/opt/ghc-7.6.3  

# make -j4          # replace with number of physical cores
# 
# # run ghci and you should get 7.6.3  
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
 
 
