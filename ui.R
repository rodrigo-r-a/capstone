# ui.R

shinyUI(fluidPage(
  titlePanel("Text Predictor"),
  
  fluidRow(
    column(12,
           br(),
           h4("Hi, I will predict your next word ;)"),
           br(),
           h4("Just type a word or phrase on the box below. Underneath this box, I will suggest a way to complete the phrase you've written, and below this, I will predict your next word."),
           br()
    )
  ),
  
  fluidRow(
    column(6,
           textInput("input_str", 
                     label = "Type a word or phrase:", 
                     value = " "
           )             
    )    
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           br(),
           br(),
           h4("You are saying...", style = "color:black;"), 
           verbatimTextOutput("text1")             
    )
  ),
  
  fluidRow(
    column(12,
           br(),
           br(),
           h4("You'll say...", style = "color:blue"), 
           verbatimTextOutput("text2")            
    )
  )
))