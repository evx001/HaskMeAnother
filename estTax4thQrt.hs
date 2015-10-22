-- An estimated tax program I wrote

module  EstTax4Qrt where


import Dec02 
import Dec26 
import Nov09 
import Oct07 
import Sept07 


nycOglig        = 0.03534
albanyOblig     = 0.059
fedObligat      = 0.3 


expen = [dec02,dec26,nov09,oct07,sept07]


sumExpen = sum expen 


earned4Qt = (sum [earnedSep,earnedOct,earnedNov,earnedDec,prevQt]) - sumExpen
                where  
                earnedSep = 0 
                earnedOct = 9000
                earnedNov = 0 
                earnedDec = 0 
                prevQt= (0 + prev)
                        where  
                        prev = 0  -- anything not otherwise included above



taxFed = earned4Qt * fedObligat
taxAlbany = ( earned4Qt*albanyOblig)
taxNYC = ( earned4Qt*nycOglig)
taxTotalObligado = sum[taxFed, taxAlbany, taxNYC] 
