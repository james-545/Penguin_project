library(tidyverse)
data <- read.table ('penguin_data.txt', header = TRUE)

model0 <- lm(bill_length_mm ~ bill_depth_mm, data = data)
summary(model0)

ggplot(data, aes(x = bill_length_mm, y = bill_depth_mm, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm")

model1 <- lm(body_mass_g ~ flipper_length_mm, data = data)
summary(model1)

ggplot(data, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm")

ggsave("figs/1_flipper_bodymass_regression.png")

penguin_female <- subset(penguins, sex = "female")

x <- 1:10
x
