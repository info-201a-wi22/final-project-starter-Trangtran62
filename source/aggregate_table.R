install.packages("markdown")

# Load data set
Wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")
View(Wages)

#Change column names

colnames(Wages) <- c("income", "height", "sex", "race", "education_level", "age")
View(Wages)
library(dplyr)
#Aggregate table grouping by sex and race, with median income and education level
df <- Wages %>%
  select(income, sex, race, education_level)
aggregate_table <- aggregate(df, by = list(df$race, df$sex), FUN = median)
#Round income and education level to 1 decimal point
aggregate_table$income_round <- round(aggregate_table$income,1)
aggregate_table$education_round <- round(aggregate_table$education_level, 1)

aggregate_table <- aggregate_table %>%
  select(Group.1, Group.2, income_round, education_round)

colnames(aggregate_table) <- c("Race", "Gender", "Median Income", "Median Education Level")

#Aggregate table grouping by sex and race, with average income and education level
df <- Wages %>%
  select(income, sex, race, education_level)
aggregate_table_2 <- aggregate(df, by = list(df$race, df$sex), FUN = mean)
#Round income and education level to 1 decimal point
aggregate_table_2$income_round <- round(aggregate_table_2$income,1)
aggregate_table_2$education_round <- round(aggregate_table_2$education_level, 1)

aggregate_table_2 <- aggregate_table_2 %>%
  select(Group.1, Group.2, income_round, education_round)

colnames(aggregate_table_2) <- c("Race", "Gender", "Mean Income", "Mean Education Level")


