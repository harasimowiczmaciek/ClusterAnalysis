tagList(
  fluidRow(box(title = "K means", width = 12,
  #Select input for decostand
  selectInput(inputId = "selectdecostand3", label = "Select method for decostand",
                            choices = c('total','max','freq','normalize','range'
                                        ,'standardize','pa','chi','hellinger','log')),


  #Select input for vegdist
  selectInput(inputId = "selectvegdist11", label = "Select method for vegdist",
              choices = c("manhattan", "euclidean", "canberra", "bray"
                          , "kulczynski", "jaccard", "gower", "altGower"
                          , "morisita", "horn", "mountford", "raup"
                          , "binomial", "chao", "cao", "mahalanobis")),

  #Select input
  selectInput(inputId = "selectcriterion", label = "Select criterion",
              choices = c('calinski','ssi')),



  #Select num for cluster
  numericInput("center", "Centers inf gr:", 2
                             , min = 0
                             , max = 100),
  numericInput("center1", "Centers sup:", 10
               , min = 0
               , max = 100),

  numericInput("iter", "Iter:", 100
               , min = 0
               , max = 1000),

  mainPanel(plotOutput(outputId = "means"))

  ))


)
