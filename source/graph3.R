#read data
wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")

library(dplyr) 
library(ggplot2)

male_wages = filter(wages, sex == "male")
female_wages = filter(wages, sex == "female")

male_white_wages = filter(male_wages, race == "white")
male_black_wages = filter(male_wages, race == "black")
male_hispanic_wages = filter(male_wages, race == "hispanic")
male_other_wages = filter(male_wages, race == "other")

female_white_wages = filter(female_wages, race == "white")
female_black_wages = filter(female_wages, race == "black")
female_hispanic_wages = filter(female_wages, race == "hispanic")
female_other_wages = filter(female_wages, race == "other")

male_earning_list = c(median(male_white_wages$earn),
                      median(male_black_wages$earn),
                      median(male_hispanic_wages$earn),
                      median(male_other_wages$earn))
female_earning_list = c(median(female_white_wages$earn),
                      median(female_black_wages$earn),
                      median(female_hispanic_wages$earn),
                      median(female_other_wages$earn))

race_list = c("white","black","hispanic","other")

combined_list <- cbind(race_list, ceiling(male_earning_list), ceiling(female_earning_list))

colnames(combined_list) <- c("race", "male", "female")

combined_data = as.data.frame(combined_list)
class(combined_data)

combined_list
combined_data


graph3 <- ggplot(combined_data) +
         geom_col(mapping = aes(x = race, y = male))

graph4 <- ggplot(combined_data) +
  geom_col(mapping = aes(x = race, y = female, fill = male))

                  

  