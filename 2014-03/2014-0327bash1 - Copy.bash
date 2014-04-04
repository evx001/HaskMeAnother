# cmd 1 # creates partition returns -> print of partition size.   
dd if=/dev/zero of=/swapfile bs=1M count=2048 && mkswap /swapfile && swapon /swapfile&& swapon -s  
