library(ggplot2)
data(iris)
Data.PCA <- prcomp(iris[, 1:4], center = TRUE, scale = TRUE)

shinyServer(
      function(input, output) {
            
        output$PCAplot <- renderPlot({
              
            iris$PCx <- Data.PCA$x[, input$PCx]
            iris$PCy <- Data.PCA$x[, input$PCy]
              
            ggplot(iris, aes(x = PCx, y = PCy, color = Species)) +
                  geom_point()
              
              
        })
            
      
})

