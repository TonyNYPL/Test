
library(tidyverse)
library(dbplyr)
library(arrow)
library(tidylog)
library(dplyr)


EBooks23 <- open_dataset(sources ="G:\\.shortcut-targets-by-id\\17jPgo1IgWLNT7aF5a8r8s8_6dbKM7Eyc\\Data Prep\\Patron Transactions\\od_parquet\\",partitioning = c("year","month"),factory_options = list(exclude_invalid_files = T))


EB23 <- EBooks23 %>% filter(year==2023) %>% collect()