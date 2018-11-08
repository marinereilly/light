stat_kd<-function(df)
{
  library(plyr)
  library(broom)
  ddply(df,"siteid",
        function(u) {
          r <- nls(Iratio ~ a*exp(b*z), data=u, start=list(a=0.5, b=-2.5))
          tidy(r)%>%
            select(-(std.error:p.value)) %>%
            spread(term, estimate)})
}
