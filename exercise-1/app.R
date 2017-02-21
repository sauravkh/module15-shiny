# load the "shiny" library
library("shiny")

# Define a new `ui` variable. This variable should be assigned a `fluidPage` layout
new.ui <- fluidPage(

  # Include a `titlePanel` layout with the text "Cost Calculator"
  titlePanel("Cost Calculator"),

  # Include a `numericInput()` widget with the label "Price (in dollars)"
  # It should have a default value of 0 and a minimum value of 0
  # Hint: look up the function in the documentation!
  numericInput('price',label = "Price (in dollars)" , value = 0),

  # Include a `numericInput()` widget with the label "Quantity"
  # It should have a default value of 1 and a minimum value of 1
  numericInput('quantity', label = "Quantity" , value = 1, min = 1),

  # Include the word "Cost" strongly bolded
  strong("Cost"),

  # Include a `textOutput()` output of the calculated `cost`
  textOutput('cost')
)

my.server <- function(input, output) {
  output$cost <- renderText({
    return(paste0('$', input$price * input$quantity))
  })
}

# Define a `server` function (with appropriate arguments)

  
  # Assign a reactive `renderText()` function to the outputted `cost`
  # The reactive expression should return the inputed `price` times the `quantity`
  # So it looks nice, paste a "$" in front of it!


shinyApp(ui = new.ui, server = my.server)

# Create a new `shinyApp()` using the above ui and server
