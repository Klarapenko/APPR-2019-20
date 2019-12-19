library(readr)
library(tidyr)
library(dplyr)

URE <- read_csv("podatki/tedenske_delovne_ure(2009-2018).csv",na=":",skip=1,
                col_names=c("leta","država","spol","delovni čas", "status", "neki1","neki2","povprečno ur", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
      select(-"spol",-"neki1",-"delovni čas",-"opombe",-"status",-"neki2")


