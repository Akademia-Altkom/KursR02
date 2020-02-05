library(shiny)

actionButton(
    "Przycisk",
    label = "OK")

shinyUI(fluidPage(
    titlePanel("Interaktywne kontrolki"),
    
    fluidRow(
        column(3,
               h3("Przyciski"),
               actionButton("action",
                            label = "Action"),
               br(),
               br(), 
               submitButton("Wyślij")),
        
        column(3,
               h3("Pojedyńczy wybór"),
               checkboxInput("checkbox",
                             label = "Wybór A", value = TRUE)),
        
        column(3, 
               checkboxGroupInput("checkGroup", 
                                  label = h3("Grupa opcji"), 
                                  choices = list("Opcja 1" = 1, 
                                                 "Opcja 2" = 2, "Opcja 3" = 3),
                                  selected = 1)),
        
        column(3, 
               dateInput("Data", 
                         label = h3("Data"), 
                         value = "2019-01-01"))   
    ),
    
    fluidRow(
        column(3,
               dateRangeInput("dates", label = h3("Zakres dat"))),
        
        column(3,
               fileInput("file", label = h3("Plik wejściowy"))),
        
        column(3, 
               h3("Pomoc"),
               helpText("Pomoc,", 
                        "bardzo istotna",
                        "dla aplikacji Shiny.")),
        
        column(3, 
               numericInput("num", 
                            label = h3("Wartość liczbowa"), 
                            value = 1))   
    ),
    
    fluidRow(
        
        column(3,
               radioButtons("radio", label = h3("Przełacznik"),
                            choices = list("Wybór 1" = 1, "Wybór 2" = 2,
                                           "Wybór 3" = 3),selected = 1)),
        
        column(3,
               selectInput("select", label = h3("Pole wyboru"), 
                           choices = list("Wybór 1" = 1, "Wybór 2" = 2,
                                          "Wybór 3" = 3), selected = 1)),
        
        column(3, 
               sliderInput("slider1", label = h3("Suwak"),
                           min = 0, max = 100, value = 50),
               sliderInput("slider2", "",
                           min = 0, max = 100, value = c(25, 75))
        ),
        
        column(3, 
               textInput("text", label = h3("Tekst"), 
                         value = "Wpisz tekst..."))   
    )
    
))
