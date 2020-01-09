library(readr)
library(tidyr)
library(dplyr)

LOCITVE <- read_tsv("podatki/stevilo_locitevv.tsv",na=":",skip 1,
                    col_names=c("neki1","neki2","drzava","2006", "2007", "2008","2009","2010", "2011", "2012","2013", "2014","2015", "2016", "2017"),
                    locale=locale(encoding="windows-1250")) %>%
              select(-"neki1", -"neki2")
               
