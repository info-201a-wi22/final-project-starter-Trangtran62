#read data
wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final
                  -project-starter-Trangtran62/main/data/wages.csv")

# A function that takes in a dataset and returns a list of info about it:
summary_info <- list()

summary_info$num_observations <- nrow(wages)
summary_info$earning_standard_deviation  <- sd(wages$earn)
summary_info$max_earning <- max(wages$earn)
summary_info$min_earning <- min(wages$earn)
summary_info$wages %>%
  group_by(race) %>%
  summarise(count = n()) %>%
  mutate("%" = round((count / sum(count) * 100),digits = 2))