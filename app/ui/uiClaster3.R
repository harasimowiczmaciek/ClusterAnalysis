tagList(
  fluidRow(box(title = "Report", width = 12,

               #Select input for decostand
               selectInput(inputId = "selectdecostandSil", label = "Select method for decostand",
                           choices = c('total','max','freq','normalize','range'
                                       ,'standardize','pa','chi','hellinger','log')),


               #Select input for vegdist
               selectInput(inputId = "selectvegdistSil", label = "Select method for vegdist",
                           choices = c("manhattan", "euclidean", "canberra", "bray"
                                       , "kulczynski", "jaccard", "gower", "altGower"
                                       , "morisita", "horn", "mountford", "raup"
                                       , "binomial", "chao", "cao", "mahalanobis")),

               selectInput(inputId = "selectdendrogramSil", label = "Select method",
                           choices = c('single','ward','complete','average'
                                       ,'mcquitty','median','centroid')),



               numericInput("obsSil", "Cluster:", 4
                            , min = 2
                            , max = 100),


               mainPanel(plotOutput(outputId = "sil"))
  ))



)
