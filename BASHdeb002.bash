# REMOVE "#" INFRONT OF EACH LINE TO EXPOSE COMMAND

# "&&" leads to the the next command

# "----" headings

# swap will be needed for ram under two gigs
#       dd if=/dev/zero of=/swapfile bs=1M count=2048 &&
#               mkswap /swapfile &&
#               swapon /swapfile &&
#               apt-get install htop && htop

# some tools
#       apt-get update &&
#               apt-get install mc &&
#               apt-get install git

# deb setup files
#         apt-get install build-essential &&
#         apt-get install libgmp3-dev libffi-dev zlib1g-dev &&
#         apt-get install libgl1-mesa-dev libglu1-mesa-dev &&
#         apt-get install libglew-dev freeglut3-dev

# ---------- Debian specific --------------
# echo "deb http://ftp.debian.org/debian/ squeeze main" \
# | sudo tee -a /etc/apt/sources.list
#      apt-get update
#      apt-get -t squeeze install libgmp3c2
#      sed -i '$d' /etc/apt/sources.list &&
#      apt-get update

#-------- ghc 7.4.x -------------
# apt-get install ghc && apt-get install make && aptitude install -y libgmp3c2 && apt-get install libncurses5-dev

# ---------- wget ghc7.6.x ---------------
# wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2 && tar xjvf ghc-7.6.3-src.tar.bz2 && cd ghc-7.6.3



#------------ REMEMBER SWAP SPACE -------------------------
# ----------- PATH for 7.6.3 ----------------------
# wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2 && tar xjvf ghc-7.6.3-src.tar.bz2 && cd ghc-7.6.3

# ---------- inside 7.6.3 -----------
# ./configure --prefix=/opt/ghc-7.6.3
# make

# make install      # sudo might be necessary

# ---------------------------------------------
# # add to path
#   # /opt/ghc-7.6.3/bin"
# # user path
# # PATH="$HOME/bin:$PATH:/opt/ghc-7.6.3/bin"
#   # global
# # /etc/environment
#     # added in ghc7.6.3 path
#     # PATH="/opt/ghc-7.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# # YOU MIGHT HAVE ISSUE THE REBOOT COMMAND to get Bash to see it.



# nano is the default debian editor 
# etc/profile has PATH 
# broken shell try path + command 
# 	//bin/ls 
# 


#-------------------------------------
# # run ghci and you should get 7.6.3
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# if not you might have to disable ghc-7.4 down in /usr/bin

#---------------------- needed lib ----------------------
#    aptitude install -y libglc-dev freeglut3 freeglut3-dev



#--------------- haskell-platform --------------------------

# cd  //home/ghc-7.6.3  &&  
# wget http://lambda.haskell.org/platform/download/2013.2.0.0/haskell-platform-2013.2.0.0.tar.gz # &&   
# tar xzvf haskell-platform-2013.2.0.0.tar.gz  &&   cd haskell-platform-2013.2.0.0  &&   ./configure --prefix=/opt/haskell-platform-2013.2.0.0
#//home/ghc-7.6.3/haskell-platform-2013.2.0.0# make
# ghc 7.6.3 has to be in the path or make wont see it
#     $ make -j4
#     $ sudo make install
#
# # Add `/opt/haskell-platform-2013.2.0.0/` to `$PATH`.
# PATH="/opt/ghc-7.6.3/bin:/opt/haskell-platform-2013.2.0.0:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

# ---------- adding user ----------
# useradd -d /home/evxyz    -m evxyz  

# # set pw
# passwd evxyz

# as root add to sudo
# sudo adduser evxyz sudo

# #-------------------- Cabal 18 is needed ----------------
#
# # Cabal is included as part of Haskell Platform. Go ahead and update it:
  su evxyz 
# sudo    cabal update && cabal install cabal-install
# sudo    cabal-install --version
#
# # Some useful packages:
#
# cabal install ghc-mod hoogle hlint snap
#
#
#
# ---------------package checking and de-listing --------------
# # ghc-pkg list
#   ghc-pkg update
#
# # ghc-pkg unregister <packageName | packageName-version>
# # example ##  ghc-pkg  unregister  warp-2.1.2
#
#
# #------------------------------------------------------
# /root/.cabal/bin

# -------------------------------------------------------
# perm swap space
# vim -N /etc/fstab
# -------------------> add in this to fstab
#  /swapfile       none    swap    sw      0       0
