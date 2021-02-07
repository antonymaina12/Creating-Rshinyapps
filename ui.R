library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title = "A.K HOLDINGS"),
        dashboardSidebar(
            sliderInput("bins","Number of Breaks",1,100,50),
            menuItem("Dashboard"),
                menuSubItem("Dashboard finance"),
                menuSubItem("Dashboard sales"),
            menuItem("Detail Analysis"),
            menuItem("Raw data")
        ),
        dashboardBody(
            fluidRow(
                box(plotOutput("histogram"))
                
            )
        )
    )
)

