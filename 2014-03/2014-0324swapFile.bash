# Four-step Process to Add Swap File
# 
# Creating a file the size you want. 
    sudo fallocate -l 512m /mnt/512MiB.swap
    sudo chmod 600 /mnt/512MiB.swap  # stops rogue user access.  
# Formatting that file to create a swapping device.
    sudo mkswap /mnt/512MiB.swap
# Adding the swap to the running system.
    sudo swapon /mnt/512MiB.swap
# Making the change permanent, via an edit to the /etc/fstab: 
    gksudo gedit /etc/fstab
