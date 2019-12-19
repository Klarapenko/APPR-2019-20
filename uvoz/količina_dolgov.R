library(readr)
library(tidyr)
library(dplyr)

DOLGOVI<- read_csv("podatki/kolicina_dolgov(2008-20018).csv",na=":",skip=1,
                col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)","opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")

