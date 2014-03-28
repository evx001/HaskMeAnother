###### BASH002 ######


# if memory is the issue then add in a 4gig worth of temporary swapfile. NOTE: if you reboot this swapSpace will be gone.  
dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile &&  swapon -s   # reveals partition 



# # add to path  
#   # /opt/ghc-7.6.3/bin" 
# # user path  
# # PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin" 
#   # global
# # /etc/environment 
#     # added in ghc7.6.3 path 
#     # PATH="/opt/ghc-7.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# # you might have issue the reboot command  
# reboot  

# 
# # run ghci and you should get 7.6.3  
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
 
 
# ## Haskell Platform 2013.2.0.0
# 
# # Install Ubuntu 12.04 depencies:
# 
#     aptitude install -y libglc-dev freeglut3 freeglut3-dev
# 
# # Haskell Platform Ubuntu dependencies:
# 
#      wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz && 
#      tar xzvf haskell-platform-2013.2.0.0.tar.gz  && 
#      cd haskell-platform-2013.2.0.0 && 
#      ./configure --prefix=/opt/haskell-platform-2013.2.0.0 && 
#
# # ghc 7.6.3 has to be in the path or make wont see it
#     $ make -j4
#     $ sudo make install
# 
# # Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.
# 
# ## Cabal
# 
# # Cabal is included as part of Haskell Platform. Go ahead and update it:
# 
#     $ cabal update && cabal install cabal-install
#     $ cabal-install --version
# 
# # Some useful packages:
# 
#     $ cabal install ghc-mod hoogle hlint pointfree 
# 
# 
# #******************************************************
# # Installation completed successfully.            
# #
# # Programs installed into:                        
# #   /usr/local/bin
# #
# # Now do "cabal update" to initialize the package list                          
# #
# # Additional packages may be found at http://hackage.haskell.org
# # or via "cabal list <pattern>"
# #
# # Use "cabal install <foo>" to install additional packages
# #
# #******************************************************
# #------------------------------------------------------
