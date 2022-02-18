#Graph 1 (race and income)
library("ggplot2")

wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")

graph1 <- ggplot(
  data = wages,
  mapping = aes(x = race, y = earn, fill = race)
) + geom_boxplot() + coord_flip() + ggtitle("Income by race")
