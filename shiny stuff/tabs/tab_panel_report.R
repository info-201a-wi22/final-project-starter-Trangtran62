# tab_panel_report
library(markdown)
library(shiny)

tab_panel_report <-tabPanel(
  "Report",
  fluidRow(
    column(
      12,
      includeMarkdown("tabs/report.md")
    )
  )
)
