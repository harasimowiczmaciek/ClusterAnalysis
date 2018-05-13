
ui <- dashboardPage( skin = "black",
                     dashboardHeader(title = "Cluster analysis"),
                     dashboardSidebar(width = 225,
                                        sidebarMenu(
                                        menuItem("Introduction", tabName = "Intro"),
                                        menuItem("Data upload", tabName = 'dataPull'),
                                        menuItem("Cluster dendrogram", tabName = "groups"),
                                        menuItem("Cluster dendogram with clases", tabName = 'group1'),
                                        menuItem("K means", tabName = 'group2'),
                                        menuItem("Clus plot", tabName = 'group3'),
                                        menuItem("Sil plot", tabName = "group4"))
                     ),

                     dashboardBody(
                       tabItems(
                         tabItem(tabName = "Intro",
                                 source("ui/uiIntro.R", local = TRUE)$value
                                 ),
                         tabItem(tabName = "dataPull",
                                 source("ui/uiDataPull.R", local = TRUE)$value
                         ),
                         tabItem(tabName = "groups",
                                 source("ui/uiClaster1.R", local = TRUE)$value
                                 ),

                         tabItem(tabName = "group1",
                                 source("ui/uiClaster2.R", local = TRUE)$value
                                 ),
                         tabItem(tabName = "group11"
                                 #source("ui/uiClaster3.R", local = TRUE)$value
                         ),

                         tabItem(tabName = "group2",
                                 source("ui/uiSecondType.R", local = TRUE)$value
                                 ),

                         tabItem(tabName = "group3",
                                 source("ui/uiThirdType.R", local = TRUE)$value
                                 ),
                         tabItem(tabName = "group4",
                                 source("ui/uiFourthType.R", local = TRUE)$value
                         )
                      )
                  )
)
