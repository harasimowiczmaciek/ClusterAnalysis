tagList(
  fluidRow(box(title = "Clus plot", width = 12,
  #Select input for decostand
  selectInput(inputId = "selectdecostand1", label = "Select method for decostand",
                            choices = c('total','max','freq','normalize','range'
                                        ,'standardize','pa','chi','hellinger','log')),


  #Select input for vegdist
  selectInput(inputId = "selectvegdist1", label = "Select method for vegdist",
              choices = c("manhattan", "euclidean", "canberra", "bray"
                          , "kulczynski", "jaccard", "gower", "altGower"
                          , "morisita", "horn", "mountford", "raup"
                          , "binomial", "chao", "cao", "mahalanobis")),


  #Select num for cluster

numericInput("obs2", "Cluster:", 4
               , min = 2
               , max = 100),
  mainPanel(plotOutput(outputId = "clusplot"))


))

)
