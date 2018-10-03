library(tidyverse)
mtcars %>% filter(mpg >= 24.4) %>% arrange(desc(mpg))
arrange(mtcars, mpg)

mtcars %>% select(mpg,disp)
mtcars %>% select(wt:gear)

mtcars %>% mutate(wtkg=wt*.48)

mtcars %>% group_by(cyl) %>% summarise(cyl_n = n(), cyl_mean=mean(mpg))

# deberes
mpg %>% filter(manufacturer == 'toyota' & model == 'camry')

mpg %>% group_by(manufacturer) %>% summarise(prom=mean(cty)) %>% arrange(prom) %>%
       mutate(sdm='sd(cty)')

mpg %>% group_by(manufacturer) %>% summarise(prom=mean(cty), sd=sd(cty), n=n(), rango=max(cty)-min(cty)) %>%
       mutate(sdm = sd/sqrt(n)) %>% select(manufacturer, prom, sdm, rango)

cbind(
  mpg %>% filter(year<2004) %>% group_by(manufacturer) %>% summarise(prom99=mean(cty)),
  mpg %>% filter(year>2004) %>% group_by(manufacturer) %>% summarise(prom08=mean(cty)) %>% select(prom08)) %>%
  mutate(mejora=prom08-prom99) %>% arrange(mejora)
  