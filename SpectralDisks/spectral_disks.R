# install.packages("tidyverse")

library(ggplot2)
library(tibble)

mpg |>
  ggplot(aes(displ, hwy, colour = drv, size = cyl)) +
  geom_point(show.legend = FALSE) +
  geom_point(show.legend = FALSE, size = 1, colour = "#ffffff") + 
  theme_void() +
  scale_color_brewer(palette = "Spectral")

