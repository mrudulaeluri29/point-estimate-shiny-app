library(shiny)
library(ggplot2)

# Define UI
ui <- fluidPage(
  titlePanel("Point Estimate Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("mean", "Mean:", value = 0),
      numericInput("std_dev", "Standard Deviation:", value = 1),
      numericInput("sample_size", "Sample Size:", value = 30, min = 1),
      actionButton("calculate", "Calculate")
    ),
    
    mainPanel(
      plotOutput("densityPlot"),
      textOutput("point_estimate")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Calculate point estimate
  observeEvent(input$calculate, {
    data <- rnorm(input$sample_size, mean = input$mean, sd = input$std_dev)
    point_estimate <- mean(data)
    output$point_estimate <- renderText({
      paste("Point Estimate:", round(point_estimate, 2))
    })
  })
  
  # Plot density
  output$densityPlot <- renderPlot({
    data <- rnorm(input$sample_size, mean = input$mean, sd = input$std_dev)
    ggplot(data.frame(data), aes(x = data)) +
      geom_density(fill = "skyblue", alpha = 0.7) +
      labs(title = "Density Plot",
           x = "Value", y = "Density")
  })
}

# Run the application
shinyApp(ui = ui, server = server)


