#Question 1
#Plot between IQ and Hours TV Watched per Week
iq<-read.csv(file="Exercise10.csv", sep=",",header = TRUE, stringsAsFactors = FALSE)
library(ggplot2)
ggplot(data = iq, aes(x= Hours, y= IQ))+
  geom_point()+
  xlab("Hours Per Week Watching TV (hrs)")+
  stat_smooth(method = "lm")+
  theme_classic()
#Question 2
data<-read.csv(file="data.txt", sep = ",", header = TRUE, stringsAsFactors = FALSE)
ggplot(data, aes(x= region, y=observations))+
stat_summary(fun = mean, geom = "bar")+
xlab("Region")+
ylab("Observations")+
theme_classic()
