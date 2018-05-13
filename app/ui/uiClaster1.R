tagList(fluidRow(
  box(
    title = "Cluster dendrogram",
    width = 12,
    selectInput(
      inputId = "selectdecostand",
      label = "Select method for decostand",
      choices = c(
        'total',
        'max',
        'freq',
        'normalize',
        'range',
        'standardize',
        'pa',
        'chi',
        'hellinger',
        'log'
      )
    ),
    #Select input for vegdist
    selectInput(
      inputId = "selectvegdist",
      label = "Select method for vegdist",
      choices = c(
        "manhattan",
        "euclidean",
        "canberra",
        "bray"
        ,
        "kulczynski",
        "jaccard",
        "gower",
        "altGower"
        ,
        "morisita",
        "horn",
        "mountford",
        "raup"
        ,
        "binomial",
        "chao",
        "cao",
        "mahalanobis"
      )
    ),
    selectInput(
      inputId = "selectdendrogram",
      label = "Select method",
      choices = c(
        'single',
        'ward',
        'complete',
        'average'
        ,
        'mcquitty',
        'median',
        'centroid'
      )
    ),
    mainPanel(plotOutput(outputId = "dendrogram"))
  )
))
