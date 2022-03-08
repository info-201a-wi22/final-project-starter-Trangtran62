# tab_panel_chart2

library(shiny)

tab_panel_chart2 <- tabPanel("Chart 2",
                             h1("Wage and Gender Interactive Graph"),
                             p("Adjust the slider to adjust the range of wages and examine how it changes the disributuion for each gender"),
                             sidebarLayout(position = "left",
                                           sidebarPanel(sliderInput(inputId = "slider",
                                                                    label = "Choose the Wage Range",
                                                                    min = 0,
                                                                    max = 317949,
                                                                    value = c(0, 317949))),
                                           mainPanel(plotOutput(outputId = "xAxis"),
                                                     h1(" "),
                                                     p("This second graph shows the relationship between 
                                                gender and the amount of wages earned. From this 
                                                graph it can be seen that males earn a higher amount 
                                                of money compared to females. The filled part of 
                                                the graph shows the number of people earning a certain
                                                amount, looking at the distribution of male vs female 
                                                the amount of wages earned seems more evenly 
                                                distributed for males then it does for females."))
                             )
)

