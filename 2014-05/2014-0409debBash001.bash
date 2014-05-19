# # --  2014-0409debBash001.bash 
# nano is the default debian editor 
# etc/profile has PATH 
# broken shell try path + command 
# 	//bin/ls 
# try editting profile with 763 path  

# got as far as yesod installed, 
# Debian's handling of swap space was better. 
# no breakage of packages so far. 
# next is yesod init 
# if we get init then we are there.  

   cd Yesoddity && cabal sandbox init && cabal install --enable-tests . yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals && yesod devel
evxyz@Deb512:~$ cd Yesoddity && cabal sandbox init && cabal install --enable-tests . yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals && yesod devel
Writing a default package environment file to
/home/evxyz/Yesoddity/cabal.sandbox.config
Creating a new sandbox at /home/evxyz/Yesoddity/.cabal-sandbox
Resolving dependencies...
Killed
