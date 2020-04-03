#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that displays the plot
ui <- fluidPage(
    
    # Application title
    titlePanel("Top Ten States with the Most Startups"),
    
    # plot output is named distPlot
    plotOutput("toptenPlot")
    
)

# # Define server logic required to display png
server <- function(input, output) {
    
    # Send a pre-rendered image, and don't delete the image after sending it
    output$toptenPlot <- renderImage({
        
        # Return a list containing the filename, alt text, and sizing
        list(src = "topten_plot.png",
             contentType = 'image/png',
             alt = "This is an image",
             width = 700,
             height = 700)
    }, deleteFile = FALSE)
}

# Run the application 
shinyApp(ui = ui, server = server)
