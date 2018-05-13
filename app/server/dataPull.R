#This function is repsonsible for loading in the selected file

# Read file
df <- reactive({
  req(input$uploaded_file)
  read_delim(input$uploaded_file$datapath,
             col_names = input$header,
             delim = input$sep)

    })

# Dynamically generate UI input when data is uploaded
output$checkbox <- renderUI({
  checkboxGroupInput(inputId = "select_var",
                     label = "Select variables",
                     choices = names(df()))
  })

# Select columns to print
df_sel <- reactive({
  req(input$select_var)
  df_sel <- df() %>% select(input$select_var)
  na.omit(df_sel)
  })


# Print data table
output$rendered_file <- DT::renderDataTable({
  if(input$disp == "head"){
    head(df_sel())
  }
  else {
    df_sel()
  }
  })
