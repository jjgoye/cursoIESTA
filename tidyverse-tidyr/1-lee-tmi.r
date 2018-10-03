rm(list=ls())
tmi <- readRDS("tidyverse-tidyr/tmi.rds")

library(tidyverse)
tmi %>% gather( key=var, value=dato, -Depto) %>% 
      separate(var, c("concepto", "anio")) -> tmi_limpio

