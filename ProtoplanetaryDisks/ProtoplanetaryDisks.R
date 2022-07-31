library(ggplot2)
library(tibble)

set.seed(1)
n <- 300
dat <- tibble(
  x0 = runif(n),
  y0 = runif(n),
  x1 = x0 + runif(n, min = -.2, max = .2),
  y1 = y0 + runif(n, min = -.2, max = .2),
  shade = runif(n), 
  size = runif(n)
)

dat |> 
  ggplot(aes(
    x = x0,
    y = y0,
    xend = x1,
    yend = y1,
    colour = shade,
    size = size
  )) +
  geom_segment(show.legend = FALSE) +
  coord_polar() +
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(expand = c(0, 0)) + 
  scale_color_viridis_c(option = "magma") + 
  scale_size(range = c(0, 10)) + 
  theme_void() + 
  theme(plot.background = element_rect(fill = 'black', colour = 'black'))

  ggsave(filename = "ProtoplanetaryDisks/protodisks.png", width = 4, height = 4, device='tiff', dpi=700)
