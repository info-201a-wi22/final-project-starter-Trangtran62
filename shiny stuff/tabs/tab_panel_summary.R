# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    h1("Summary"),
    p(strong("There are three main takeaway from this dataset:"),
      p("1. Males earned a significantly higher amount than female regardless of race with similar averaged educational level"),
      p("2. On average, white people have a higher median income than other race"),
      p("3. There is no clear trend detected when combine the effects of race and gender. That white female earned the lowest median income can be attributed to the large general wealth gap between social classes. It could be the case that the top female white earners account for a substantially large amount of the total wealth, and those extreme data points don't affect median values."),
      p("4. There is no significant difference in educational level between either race or gender"),
      img(src='Rplot.png', height = 500, width = 500),
      img(src='Rplot01.png', height = 500, width = 500)
))

