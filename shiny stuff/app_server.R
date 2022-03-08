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
  
  output$boxplot <- renderPlotly({
    wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")
    new_dataset <- wages %>%
      filter(sex == input$Sex)
    
    options(scipen=999)
    graph1 <- plot_ly(
      data = new_dataset,
      x = ~race, 
      y = ~earn,
      type = "box",
      alpha = input$opacity
      #color = ~input$color
    ) %>%
      layout(
        title = "Distribution of wage earned by race",
        xaxis = list(title = "Race"),
        yaxis = list(title = "Amount of wages earned")
      )
    graph1
  })
  
  
}


