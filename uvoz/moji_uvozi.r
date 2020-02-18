
library(readr)
library(tidyr)
library(dplyr)
#=======================================================================================================================================

#ŠTEVILO SAMOMOROV

SAMOMORI <- read_csv("podatki/steviloo_samomorovv.csv",na=":",skip=1,
                     col_names=c("spol","država","stevilo","neki1", "neki2", "neki3","leto","vrednost", "opombe"),
                     locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"stevilo",-"opombe",-"neki3",-"neki2")



samomori.vsi<- SAMOMORI %>% group_by(leto) %>% summarise(vsota=sum(vrednost, na.rm=TRUE))
samomori.drzave <- SAMOMORI %>% group_by(država, leto) %>% summarise(vsota=sum(vrednost, na.rm = TRUE))

#=======================================================================================================================================
#SAMOMORI V PROCENTIH(2011-2016)
#Standardizirane stopnje umrljivosti, uporabljene tukaj,
#“““se izračunajo na podlagi standardnega evropskega prebivalstva (opredeli ga Svetovna zdravstvena organizacija)

P_SAMOMORI <- read_csv("podatki/samomorii.csv",skip =1, na = ":",
                       col_names = c("leto", "drzava", "stolpec1", "stolpec2", "stolpec3", "stolpec4", "vrednost", "opombe"),
                       locale = locale(encoding = "windows-1250")
                       ) %>%
  select(-"stolpec1", - "stolpec2", - "stolpec3", -"opombe", -"stolpec4")

#===============================================================================
#STEVILO SAMOMOROV PO SPOLU
S_SAMOMORI <- read_csv("podatki/st.samomorov_po_spolu.csv", na=":",skip=1,
                       col_names=c("spol", "država", "neki1", "neki2", "starost","neki3", "leto", "vrednost","opombe"),
                       locale = locale(encoding="windows-1250")) %>%
    select(-"neki1", -"neki2", -"neki3", -"starost", -"opombe")

samomori.zenske.moski.po.letih <- S_SAMOMORI %>% group_by(spol, leto) %>% summarise(vsota=sum(vrednost, na.rm=TRUE))



#=======================================================================================================================================
#TEDENSKE DELOVNE URE

URE <- read_csv("podatki/tedenske_delovne_ure.csv",na=":",skip=1,
                col_names=c("leto","država","spol","delovni čas", "status", "neki1","neki2","ure", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"delovni čas",-"opombe",-"status",-"neki2")

povprecje.ur.drzave <- URE %>% group_by(država) %>% summarise(povprecje=sum(ure)/(10))


#zemljevid <- uvozi.zemljevid("http://maps.googleapis.com/maps/api/geocode/json?address=Europe&sensor=false", encoding = "UTF-8")

#names(zemljevid)


#=======================================================================================================================================

#ŠTEVILO ZLOČINOV

ZLOCINI <- read_csv("podatki/stevilo_zlocinov.csv",na=":",skip=1,
                    col_names=c("leto","država","neki1","neki2", "enota", "vrednost", "opombe"),
                    locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"enota",-"opombe",-"neki2")

zlocini.po.drzavah <- ZLOCINI %>% group_by(država)



#=======================================================================================================================================





#ŠTEVILO ZLORAB
#vrednost v tabeli je v procentih
ZLORABE<- read_csv("podatki/st.spolnih_zlorab.csv",na=":",skip=1,
                   col_names=c("leto","država","spol","neki1", "enota", "vrednost","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"enota",-"opombe")



#=======================================================================================================================================



#DOLGOVI (2008-2018) (hipoteka ali najemnina, komunalni računi)
#vrednost v tabeli je v procentih - koliko v procentih od vseh prebivalcev države ima dolgove 

DOLGOVI<- read_csv("podatki/dolgovi.csv",na=":",skip=1,
                   col_names=c("leto","država","neki1","neki2", "enota", "vrednost","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")



#=======
#to še nvem če bom, prI uvozu kratice držav..... nakoncu preglej!
#STOPNJA LOCITEV (je razmerje med številom razvez med letom in povprečnim prebivalstvom v tem letu. Vrednost je izražena na 1000 oseb.)
#LOCITVE <- read_csv("podatki/stevilo_locitev.csv",na=":",skip=1,
 #                   col_names=c("neki1","neki2","drzava","2006", "2007", "2008","2009","2010", "2011", "2012","2013", "2014","2015", "2016", "2017"),
  #                  locale=locale(encoding="windows-1250")) %>%
  #select(-"neki1", -"neki2")




