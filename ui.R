#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hair and Eye Color of Statistics Students"),

  # Sidebar with a slider input for number of bins 
  sidebarLayout(
      sidebarPanel(
          helpText("It will show the distribution of hair and eye color, and sex of of 592 Statistics students."),
          helpText("Kindly choose the variable of interest to see its distribution."),
          
      selectInput("var",
                  "Variable",
                  c("Hair Color"="Hair","Eye Color"="Eye","Sex"="Sex"))
      #c("Hair","Eye","Sex"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))

