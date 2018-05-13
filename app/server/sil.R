output$sil <-  renderPlot({
  envs <- decostand(df_sel(), method = input$selectdecostandSil)
  envse <- vegdist(envs, method = input$selectvegdistSil)
  cutx <-
    cutree(hclust(envse, method = input$selectdendrogramSil),
           input$obsSil)
  sil = silhouette(cutx, envse)
  plot(sil, col = heat.colors(input$obsSil), cex.names = 0.6)

})
