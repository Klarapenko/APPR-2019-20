
library(readr)
library(tidyr)
library(dplyr)


#ŠTEVILO SAMOMOROV

DOLGOVI<- read_csv("podatki/kolicina_dolgov.csv",na=":",skip=1,
                   col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")

DOLGOVI$leto <- parse_integer(DOLGOVI$leto)





#TEDENSKE DELOVNE URE

URE <- read_csv("podatki/tedenske_delovne_ure.csv",na=":",skip=1,
                col_names=c("leto","država","spol","delovni čas", "status", "neki1","neki2","povprečno ur", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"delovni čas",-"opombe",-"status",-"neki2")


URE$leto <- parse_integer(URE$leto)






#ŠTEVILO ZLOČINOV

ZLOCINI <- read_csv("podatki/stevilo_zlocinov.csv",na=":",skip=1,
                    col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)", "opombe"),
                    locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"enota",-"opombe",-"neki2")


ZLOCINI$leto <- parse_integer(ZLOCINI$leto)






#ŠTEVILO ZLORAB

ZLORABE<- read_csv("podatki/št.spolnih_zlorab.csv",na=":",skip=1,
                   col_names=c("leto","država","spol","neki1", "enota", "vrednost(v procentih)","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"enota",-"opombe")

ZLORABE$leto <- parse_integer(ZLORABE$leto)





#KOLIČINA DOLGOV

DOLGOVI<- read_csv("podatki/kolicina_dolgov.csv",na=":",skip=1,
                   col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)","opombe"),
                   locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")

DOLGOVI$leto <- parse_integer(DOLGOVI$leto)







