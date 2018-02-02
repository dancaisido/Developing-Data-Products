#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  p<-reactive({
    #For the plots
    library(ggplot2)
    #Load the needed dataset
    library(datasets)
    data(HairEyeColor)
    data<-data.frame(HairEyeColor)
    
    try <- ggplot(data=data, aes(x=data[,input$var], y=Freq)) +
      geom_bar(fill="lightblue",stat="identity")  +  
      labs(list(x=paste(input$var), y="Number of Students"))
    
    try
  })
  
  output$distPlot <- renderPlot(p())
  
})




