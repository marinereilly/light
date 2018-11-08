i.ratio<-function(df){
  require(tidyverse)
  df %>%
    mutate(Iratio= Iz/Io)
}
