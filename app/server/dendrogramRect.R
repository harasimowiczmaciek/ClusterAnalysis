output$dendrogramrect = renderPlot({
  envs <- decostand(df_sel(), method = input$selectdecostand)
  envse <- vegdist(envs, method = input$selectvegdist)
  envse.s <- hclust(envse, method = input$selectdendrogram)
  plot(envse.s, hang = -1)
  rect.hclust(envse.s, input$obs)
})
