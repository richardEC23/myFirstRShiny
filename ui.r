#Load shiny packages
library(shiny)
#Define the UI for the shiny application here
shinyUI(fluidPage(
  #Here is define de header or tittle
  titlePanel(title = "Demostration of textInput widget in shiny"),
  sidebarLayout(
    #Sidebar panel definition here
    sidebarPanel((h3("Enter the personal infomation")),
                 textInput("name", "Enter your name", ""),
                 textInput("age", "Enter your age", ""),
                 radioButtons("gender", "Select the gender", list("Male", "Female"), "")),
    mainPanel(("Personal Information"),
              textOutput("myname"),
              textOutput("myage"),
              textOutput("mygender"))
    )
  )
  
  )