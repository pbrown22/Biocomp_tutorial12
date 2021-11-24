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
library(ggplot2)
data<-read.csv(file="data.txt", sep = ",", header = TRUE, stringsAsFactors = FALSE)
ggplot(data, aes(x= region, y=observations))+
stat_summary(fun = mean, geom = "bar")+
xlab("Region")+
ylab("Observations")+
theme_classic()
ggplot(data,aes(x=region,y=observations))+
  geom_jitter()+
  theme_classic()
#The bar graph and the scatterplot show much different stories. 
#The bar graph of the mean shows that the means of the 4 regions are almost identical.
#The mean of all the populations is right around 15. Bars look nearly identical. 
#However, when putting them in the scatterplot, we see the population observations
#are not as homogenous as the mean bar graph made them appear. 
#We see uniform distributions around the mean in the east and west populations. 
#We see a dense clump at the average for the north. 
#Then for the south, we see two distinct clusters above and below the mean of 15. 
#All in all, the scatterplot reveals a great difference in the makeup of the observations.
#This wasn't apparent in the bar graph. 