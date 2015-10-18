# ui.R

shinyUI(
      fluidPage(
            titlePanel("Iris PCA Plot"),
            
            sidebarLayout(
                  sidebarPanel(
                        helpText("Make PCA plots of the iris dataset."),
                        
                        numericInput("PCx", 
                                     label = "Principal component for x axis", 
                                     value = 1,
                                     min = 1, max = 4),
                        
                        numericInput("PCy", 
                                     label = "Principal component for y axis", 
                                     value = 2,
                                     min = 1, max = 4)),
                  
                  mainPanel(plotOutput("PCAplot"))
            )
      )
)