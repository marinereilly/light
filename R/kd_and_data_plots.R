kd.dataplot<-function(df, plot_id){
  require(tidyverse)
  df %>%
    pmap(~(ggplot()+
             stat_function(aes(x=seq(0,..4,0.01)),
                           fun = function(x,a,b) a*exp(b*x),
                           args = list(a=..2, b =..3), color= "red", size = 1)+
             labs(title = ..1,
                  subtitle = paste0("kd = ",..3))+
             geom_point(data= ..5, aes(x=z, y=Iratio))+
             xlab("Depth (m)")+
             ylab("Iz")+
             coord_flip()+
             scale_y_continuous(position = "bottom")+
             scale_x_reverse()+
             theme_classic()
    ))
}
