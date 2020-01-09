library(readr)
library(tidyr)
library(dplyr)


ZLOCINI <- read_csv("podatki/stevilo_zlocinov.csv",na=":",skip=1,
                col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"enota",-"opombe",-"neki2")


ZLOCINI$leto <- parse_integer(ZLOČINI$leto)
