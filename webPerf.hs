module WebPerf where 
import Data.List 

-- replicate this!!!

shop001 = [91, 60, 78,56,62]
shop002 = sum shop001  
shop003 = genericLength shop001 
shop004 = shop002 / shop003 
-- 69.4 

bgcm001 = [76,86,82,92] -- missing a score here 
bgcm002 = sum bgcm001  
bgcm003 = genericLength bgcm001 
bgcm004 = bgcm002 / bgcm003 
-- 84.0

volu001 = [29,76,83, 80,75]
volu002 = sum volu001  
volu003 = genericLength volu001 
volu004 = volu002 / volu003 
-- 68.6

BigCommerce tops their nearest rivals. I recently did an informal performance bench test, of the three major e-commerce, platforms and BigCommerce was about fifteen percent quicker to load than the other two which were about dead even. From each,  I used 5 example sites (that were touted to represent their product) and tested their load-to-usability times from within the continental U.S. then averaged the results. 
