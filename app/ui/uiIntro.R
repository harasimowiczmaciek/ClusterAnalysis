tagList(
  fluidRow(box(title = "Introduction", width = 12,
  mainPanel(
    HTML(
      paste(
        "Welcome to Cluster Analysis app.",'<br/>',
        "This application is our final project for Multidimensional Analysis course, that had taken place in 2nd semester of academic year 2017/18 at Adam Mickiewicz University in Poznan.",'<br/>',
        "It was developed by Szymon Hetmanczyk and Maciej Harasimowicz, students of geoinformatics at Faculty of Geographical and Geological Science.", '<br/>',
        "The application in an universal tool that can be use for quick and easy cluster analysis. It was design in order to work with all flat files containing numerical data
        and to offer all the possible options within used plots and dendrograms",'<br/>',
        h4("How to use?"),
        "In order to use the app simply upload your file in Data Upload section, after select columns you want to use in analysis. You can see live preview of all the columns you selected at the bottom of the page The last step is choosing the desirable type of plot in the sidebar menu and adjust it into your needs",'<br/>',
        h4("Data loading errors"),
        "All you need to do is select right type of separator in order to use the app, it works with text and both csv type files. If you cannot see column names as unique values it's because you chosen wrong type of separator.
        If your data does not have column names, simply deselect the column names box.",'<br/>',
        h4("Plots loading errors"),
        "Column that contains nonnumerical data can lead to a plot display error, therefore in case plot is not showing return to Data Upload tab and deselect columns that causes error."
      )
    )
  )
))
)
