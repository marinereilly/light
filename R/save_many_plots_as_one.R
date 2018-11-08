save.many.pdf<-function(list){
  Myplots = list
  # saves all flux regresssions in single pdf
  pdf(paste0(list,".pdf"))
  Myplots
  dev.off
}
