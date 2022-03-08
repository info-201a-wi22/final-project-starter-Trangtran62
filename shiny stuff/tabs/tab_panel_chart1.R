# tab_panel_chart1

library(shiny)
library("ggplot2")
library("plotly")

#wages <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Trangtran62/main/data/wages.csv")


gender_input <- selectInput(
  "Sex",
  label = "Sex",
  choices = list("Male" = "male", "Female" = "female"),
  selected = "male"
)

opacity_input <- sliderInput(
  "opacity",
  label = "Opacity", min = 0.2, max = 0.8, value = 0.4
)




tab_panel_chart1 <-tabPanel(
  "Chart 1",
  h1("Race, Gender and Wage Interactive Graph"),
  
  gender_input,
  
  opacity_input,
  
  plotlyOutput("boxplot"),
  p("The chart above indicates income distribution by race in white, black, Hispanic, and other groups, 
    showing the potential earnings gaps between races. From the graph above, it is clear that most people earn between 0 and 50000 for all races, 
    and the median income of white and other races is slightly higher than those of black and Hispanic communities. While most of the observations fall below 50000, 
    all categories of observations feature outliners that may influence the central tendency of distribution, especially within the white community. 
    That explains our choice of using median. For instance, data points more than 30000 are more likely to be of white people than of other racial groups.
    These values affect the mean, pulling it to the right, resulting in a right-skewed distribution with a median greater than the mean.")
  
)


