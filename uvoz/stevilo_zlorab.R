library(readr)
library(tidyr)
library(dplyr)

ZLORABE<- read_csv("podatki/št.spolnih_zlorab(2009-2018).csv",na=":",skip=1,
                col_names=c("leto","država","spol","neki1", "enota", "vrednost(v procentih)","opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"enota",-"opombe")

ZLORABE$leto <- parse_integer(ZLORABE$leto)
