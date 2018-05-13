tagList(
  fluidRow(box(title = "Cluster dendogram with clases", width = 12,
  numericInput("obs", "Cluster:", 4
               , min = 2
               , max = 100),

  mainPanel(plotOutput(outputId = "dendrogramrect"))
))
)
