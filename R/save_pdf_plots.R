save.pdf<-function(df, plot_id){
  if(!dir.exists("./figures")){ #if a figures folder does not exist, create it.
    dir.create("./figures")
  }
  #use the map function with ggsave to save named figures.
  dir.create(paste0("./figures/",df))
  map2(paste0("./figures/",df,"/", df$plot_id, ".pdf"), df$plot, ggsave)
}
