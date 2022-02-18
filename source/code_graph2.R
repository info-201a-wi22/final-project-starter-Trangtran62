wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")

library(ggplot2)
library(dplyr)
library(tidyverse)

data_used <- wages %>%
  select(earn, sex, ed)
View(data_used)

graph2 <- data_used %>% 
          drop_na() %>% 
          ggplot(aes(x = earn,
                     y = sex,
                     fill = sex), options(scipen = 999)) +
          geom_violin() +
          geom_boxplot(width = 0.1) +
          ggtitle("Distribution of wages earned by gender") +
          xlab("Amount of wages earned") +
          ylab("Gender")
graph2

#resources used
#https://datavizpyr.com/grouped-violinplot-with-ggplot2-in-r/
#http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization