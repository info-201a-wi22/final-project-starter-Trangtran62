#Graph 1 (race and income)
library("ggplot2")

wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")

graph1 <- ggplot(
  data = wages,
  mapping = aes(x = race, y = earn, fill = race, options(scipen = 999))
) + geom_boxplot() + coord_flip() + ggtitle("Distribution of wage earned by race") + ylab("Amount of wages earned") + xlab("Race")
