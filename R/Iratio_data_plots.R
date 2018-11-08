i.dataplot<-function(df, plot_id){
  require(tidyverse)
  df %>%
    group_by(plot_id) %>%
    nest() %>%
    mutate(plot=map2(data, plot_id, ~ggplot(data=.x) +
                       ggtitle(.y)+
                       theme_classic()+
                       scale_y_reverse(expand = c(0, 0))+
                       scale_x_continuous(position = "top", limits = c(0,1))+
                       ylab("depth (m)")+
                       theme(axis.line = element_line(linetype = "solid"),
                             axis.ticks = element_line(size = 1),
                             panel.grid.major = element_line(colour = "gray80",
                                                             linetype = "dotted"), panel.grid.minor = element_line(colour = "gray90",
                                                                                                                   linetype = "dotted"), axis.title = element_text(size = 12),
                             axis.text = element_text(size = 10),
                             plot.title = element_text(size = 16,
                                                       face = "bold"))+
                       geom_point(aes(x=Iratio, y=z),size=2, color="turquoise3")+
                       geom_path(aes(x=Iratio, y=z),size=1, color="turquoise3")+
                       geom_hline(aes(yintercept=1.75), color="white")))
}
