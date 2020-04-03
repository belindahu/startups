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
ui <- navbarPage(
    "Startups in the US",
    tabPanel("Graphs",
             titlePanel("Top Ten States with the Most Startups"),
             plotOutput("toptenPlot")),
    tabPanel("Discussion",
             titlePanel("Discussion"),
             h3("Methodology"),
             h3("Challenges"),
             h3("Future Directions"),
             p("Tour of the modeling choices you made and 
              an explanation of why you made them")),
    tabPanel("About", 
             titlePanel("About"),
             h3("Project Background and Motivations"),
             p("Hello, this is where I talk about my project."),
             h3("About Me"),
             p("My name is Belinda and I study History of Science. 
             You can reach me at belindahu@college.harvard.edu.")))

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
