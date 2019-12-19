library(readr)
library(tidyr)
library(dplyr)

ZLOČINI <- read_csv("podatki/stevilo_zlocinov(2008-2009).csv",na=":",skip=1,
                col_names=c("leto","država","neki1","neki2", "enota", "vrednost(v procentih)", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"neki1",-"enota",-"opombe",-"neki2")


