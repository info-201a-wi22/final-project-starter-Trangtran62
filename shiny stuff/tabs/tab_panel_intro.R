# tab_panel_intro

library(shiny)
para1 <- paste0("This data set presents income of Russians across demographics. It includes 1379 data points with 6 features: earning, height, race, gender, age, education level. In this project, we use this data set to examine the relationship between race, gender, and income, using a sample from Russia.")
para2 <- paste0("We seek to answer these questions:")
para3 <- paste0("How does racial identity affect income outcomes?")
para4 <- paste0("How does gender identity affect income outcomes?")
para5 <- paste0("How does the intersectionality of racial and gender identities affect income outcomes?")

tab_panel_intro <-tabPanel(
    "Introduction",
    h1("Introduction"),
    p(para1),
    h4(para2),
    p(para3),
    p(para4),
    p(para5),
    img(src='illustration.jpeg', height = 200, width = 200)
)

