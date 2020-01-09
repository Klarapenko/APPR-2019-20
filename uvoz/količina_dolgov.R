library(readr)
library(tidyr)
library(dplyr)

DOLGOVI<- read_csv("podatki/kolicina_dolgov.csv",na=":",skip=1,
                col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)","opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"neki2",-"enota",-"opombe")

DOLGOVI$leto <- parse_integer(DOLGOVI$leto)