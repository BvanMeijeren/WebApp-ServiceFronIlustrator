library(shiny)
library(shinydashboard)

sidebar <- dashboardSidebar(
  hr(),
  # Application title
  sidebarMenu(id="Welcome to A. van Krimpen Academic Illustrations",
              menuItem("Services", tabName = 'services'),
              menuItem("About me", tabName = 'about')
              )
  )
body <- dashboardBody(
  tabItems(
    tabItem(tabName = "services",
            includeMarkdown("ServicesTab.Rmd")),
    tabItem(tabName = "about",
            h3("HI"))
  )
)

dashboardPage(
  dashboardHeader(title = "Illustrations"),
  sidebar,
  body
)
