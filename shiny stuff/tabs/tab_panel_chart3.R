# tab_panel_chart3

library(shiny)

input_bar_one <- selectInput(
  "bar_1",
  label = "First Bar",
  choices = list("White" = "white", "Black" = "black",
                 "Hipanic" = "hispanic", "Other" = "other"),
  selected = "White"
)

input_bar_two <- selectInput(
  "bar_2",
  label = "Second Bar",
  choices = list("White" = "white", "Black" = "black",
                 "Hispanic" = "hispanic", "Other" = "other"),
  selected = "Black"
)

tab_panel_chart3 <-tabPanel(
    "Chart 3",
    h1("Median Earning Between Different Racial Groups"),
    
    input_bar_one,
    
    input_bar_two,
    
    plotlyOutput("barplot"),
    
    p("This graph displays the disparity in earnings in relation with the 
      intersection between race and gender. There is a clear wage gap 
      determined by gender, with males earning higher income than females 
      across all racial groups. According to the graph above (race and income), 
      disparities in income are featured between different racial groups, with 
      white people earning a disproportionately higher income than minoritized 
      groups. However, when looking at the effect of gender and race together 
      on income, the additional contribution of race to the wage gap is 
      unclear, as white female is the group that has the least median income. ")
)
