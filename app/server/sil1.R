output$sil1 <-  renderPlot({
  envs <- decostand(df_sel(), method = input$selectdecostand2)
  envse <- vegdist(envs, method = input$selectvegdist2)
  cutx <-
    cutree(hclust(envse, method = input$selectdendrogram2), input$obs3)
  sil = silhouette(cutx, envse)
  plot(sil, col = heat.colors(input$obs3), cex.names = 0.6)
})
