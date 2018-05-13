tagList(
  fluidRow(box(title = "Introduction", width = 12,
               # Input: Select a file
               fileInput("uploaded_file", "Choose CSV File",
                         multiple = TRUE,
                         accept = c("text/csv",
                                    "text/comma-separated-values,text/plain",
                                    ".csv")),

               # Horizontal line
               tags$hr(),

               # Input: Checkbox if file has header
               checkboxInput("header", "Column names", TRUE),

               # Input: Select separator
               radioButtons("sep", "Separator",
                            choices = c(Semicolon = ";",
                                        Comma = ",",
                                        Tab = "\t"),
                            selected = ";"),


               # Horizontal line ----
               tags$hr(),

               # Input: Select number of rows to display
               radioButtons("disp", "Display",
                            choices = c(All = "all",
                                        Head = "head"),
                            selected = "all"),

               # Select variables to display
               uiOutput("checkbox"),

               tabsetPanel(
                 id = "dataset",
                 tabPanel("FILE", DT::dataTableOutput("rendered_file"))
               )
  ))
)
