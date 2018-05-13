output$means <-  renderPlot({
  envs = decostand(df_sel(), method = input$selectdecostand3)
  envse = vegdist(envs, method = input$selectvegdist11)
  env_km = kmeans(envse, centers = input$center)
  env_km10 = kmeans(envse, centers = input$center1)
  ggg = cascadeKM(
    envse,
    inf.gr = input$center,
    sup.gr = input$center1,
    iter = input$iter,
    criterion = input$selectcriterion
  )
  plot(ggg, gridcol = "black")
})
