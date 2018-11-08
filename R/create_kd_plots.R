kd.plot<-function (df){
  require(tidyverse)
  df %>%
  pmap(~(ggplot()+
           stat_function(aes(x=seq(0,5,0.01)),
                         fun = function(x,b) 1000*exp(b*x),
                         args = list(b =..3), color= "red", size = 1)+
           labs(title = paste0(..1,"_light"),
                subtitle = paste0("kd = ",..3))+
           xlab("Depth (m)")+
           ylab("Iz")+
           coord_flip()+
           scale_y_continuous(position = "bottom")+
           scale_x_reverse()+
           theme_classic()
  ))
}
