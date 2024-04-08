library(scRNAseqApp)
library(shiny)
app_config <- scRNAseqApp(datafolder='visualization_data/')
shinyApp(app_config$ui, app_config$server)
