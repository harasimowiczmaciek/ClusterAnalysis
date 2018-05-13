
shinyServer(function(input, output, session) {
   for (file in list.files("server", full.names = TRUE, recursive = TRUE)) {
    source(file, local = TRUE)$value
   }




})
