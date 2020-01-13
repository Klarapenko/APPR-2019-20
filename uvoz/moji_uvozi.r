
library(readr)
library(tidyr)
library(dplyr)


#ŠTEVILO SAMOMOROV

SAMOMORI <- read_csv("podatki/steviloo_samomorovv.csv",na=":",skip=1,
                     col_names=c("spol","država","stevilo","neki1", "neki2", "neki3","leto","vrednost", "opombe"),
                     locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"stevilo",-"opombe",-"neki3",-"neki2")



samomori.vsi<- SAMOMORI %>% group_by(leto) %>% summarise(vsota=sum(vrednost, na.rm=TRUE))




#TEDENSKE DELOVNE URE

URE <- read_csv("podatki/tedenske_delovne_ure.csv",na=":",skip=1,
                col_names=c("leto","država","spol","delovni čas", "status", "neki1","neki2","povprečno ur", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"delovni čas",-"opombe",-"status",-"neki2")








#ŠTEVILO ZLOČINOV

ZLOCINI <- read_csv("podatki/stevilo_zlocinov.csv",na=":",skip=1,
                    col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)", "opombe"),
                    locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"enota",-"opombe",-"neki2")









#ŠTEVILO ZLORAB

ZLORABE<- read_csv("podatki/st.spolnih_zlorab.csv",na=":",skip=1,
                   col_names=c("leto","država","spol","neki1", "enota", "vrednost(v procentih)","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"enota",-"opombe")







#KOLIČINA DOLGOV

DOLGOVI<- read_csv("podatki/kolicina_dolgov.csv",na=":",skip=1,
                   col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")








