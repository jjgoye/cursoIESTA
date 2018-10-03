# ej de ggplot2
library(tidyverse)

propinas <- read.csv("tidyverse-ggplot2/propina.csv")
head(propinas)

ggplot(data=propinas, aes(x=total, y=propina)) +  
  geom_point() + theme(aspect.ratio=1)

ggplot(data=propinas, aes(x=total, y=propina, color=sexo)) +  
  geom_point() + theme(aspect.ratio=1)

ggplot(data=propinas, aes(x=total, y=propina)) +  
  geom_point(color="blue") + theme(aspect.ratio=1)

ggplot(data=propinas, aes(x=total, y=propina, size=cantidad)) +  
  geom_point(alpha=1/5) + theme(aspect.ratio=1)

ggplot(data=propinas, aes(x=total, y=propina)) +  
  geom_point(size=1, alpha=1/5) + theme(aspect.ratio=1)

ggplot(data = propinas, aes(x = total, y = propina)) +
  geom_point() + theme(aspect.ratio = 1) +
  facet_wrap(sexo ~fuma)
ggplot(data = propinas, aes(x = total, y = propina)) +
  geom_point() + theme(aspect.ratio = 1) +
  facet_grid(sexo ~fuma)

# tarea
ggplot(data = propinas, aes(x = total, y = propina)) +
  geom_point(aes(color=fuma)) + 
  geom_smooth(data=propinas, method = "lm", color="black") +
  theme(aspect.ratio = 1) +
  labs(title="Mi primer gráfica", x="Total gastado en dólares", y="Propina en dólares", color="Fumador") +
  theme(legend.position = "bottom" ) +
  scale_color_brewer(palette = "Dark2")

ggplot(data = propinas, aes(x = fct_infreq(dia), fill=sexo)) +
  geom_bar() + coord_flip(expand = FALSE )
