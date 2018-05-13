output$clusplot = renderPlot({
  envs <- decostand(df_sel(), method = input$selectdecostand1)
  envse <- vegdist(envs, method = input$selectvegdist1)
  pp = pam(envse, k = input$obs2)
  clusplot(pp, lines = 0)
})
