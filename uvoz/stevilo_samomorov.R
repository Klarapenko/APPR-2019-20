library(readr)
library(tidyr)
library(dplyr)

SAMOMORI <- read_csv("podatki/steviloo_samomorovv.csv",na=":",skip=1,
                col_names=c("spol","država","stevilo","neki1", "neki2", "neki3","leto","vrednost", "opombe"),
                locale=locale(encoding="windows-1250")) %>%
  select(-"spol",-"neki1",-"stevilo",-"opombe",-"neki3",-"neki2")

SAMOMORI$leto <- parse_integer(SAMOMORI$leto)

samomori <- gather(SAMOMORI, -država, key=leto, value =vrednost , na.rm = TRUE)

samomori$leto <- parse_integer(samomori$leto)

samomori.vsi<- samomori %>% group_by(leto) %>% summarise(vsota=sum(vrednost))

