library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(tidyverse)

server <- function(input, output) {
  
  output$xAxis <- renderPlot({
    
    wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")
    
    data_used <- wages %>%
      select(earn, sex, ed) %>% 
      filter(earn >= input$slider[1] & earn <= input$slider[2])
    
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
  })
  
}


