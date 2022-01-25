#iinstall packages (tidyverse, ggthemes, patchwork) 
#install.packages('tidyverse')
#install.packages('ggthemes')
#install.packages('pathcwork')

library(tidyverse)
library(ggthemes)
l1<-read.csv("mBDC.csv", stringsAsFactors = F)
l2<-read.csv("mOC.csv", stringsAsFactors = F)
l3<-read.csv("mof.csv", stringsAsFactors = F)
l1
l3
p1<-ggplot(data=l1, aes(x=Month,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  scale_x_discrete(limits = month.abb)+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+ggtitle('Bangladesh Coast')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 12, y = 30, label = "A")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p1
p2<-ggplot(data=l2, aes(x=Month,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  scale_x_discrete(limits = month.abb)+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+ggtitle('Outer Coast')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 12, y = 30, label = "B")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
p2       
p3<-ggplot(data=l3, aes(x=Month,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  scale_x_discrete(limits = month.abb)+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+ggtitle('Offshore')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 12, y = 30, label = "C")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p3  
library(patchwork)

plot<-p1 + p2 + p3 + plot_layout(ncol = 1)
plot
ggsave("MONTHSST.png",plot, dpi = 500)
library(tidyverse)
library(ggthemes)
y1<-read.csv("yBDC.csv", stringsAsFactors = F)
y2<-read.csv("yOC.csv", stringsAsFactors = F)
y3<-read.csv("yof.csv", stringsAsFactors = F)
y1
p1<-ggplot(data=y1, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y1$Year))+
  ggtitle('Bangladesh Coast')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 2000, y = 28, label = "A")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

  
p1

p2<-ggplot(data=y2, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y2$Year))+
  ggtitle('Outer Coast')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 2000, y = 28.3, label = "B")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

p2       
p3<-ggplot(data=y3, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y3$Year))+
  ggtitle('Offshore')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="right")+
  annotate(geom = "text", x = 2000, y = 28.3, label = "C")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

p3   
library(patchwork)

plot<-p1 + p2 + p3 + plot_layout(ncol = 1)
plot
ggsave("YEARSST.png",plot, dpi = 500)
library(tidyverse)
library(ggthemes)
y4<-read.csv("day.csv", stringsAsFactors = F)
y5<-read.csv("night.csv", stringsAsFactors = F)

p5<-ggplot(data=y4, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y1$Year))+
  ggtitle('Daytime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 2000, y = 28.4, label = "A")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.x = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

  
p5

p6<-ggplot(data=y5, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y2$Year))+
  ggtitle('Nighttime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 2000, y = 28.3, label = "B")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

p6       

library(patchwork)

plot<-p5 + p6+ plot_layout(ncol = 1)
plot
ggsave("YSSTComparision.png",plot, dpi = 500)

library(tidyverse)
library(ggthemes)
y4<-read.csv("day.csv", stringsAsFactors = F)
y5<-read.csv("night.csv", stringsAsFactors = F)

p5<-ggplot(data=y4, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y1$Year))+
  ggtitle('Annual Daytime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 2000, y = 28.4, label = "A")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

  
p5

p6<-ggplot(data=y5, aes(x=Year,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  scale_x_continuous(breaks =(y2$Year))+
  ggtitle('Annual Nighttime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 2000, y = 28.3, label = "B")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.y = element_blank())+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

p6       

library(patchwork)

plot<-p5 + p6+ plot_layout(ncol = 1)
plot
ggsave("YSSTComparision.png",plot, dpi = 500)
y6<-read.csv("daym.csv", stringsAsFactors = F)
y7<-read.csv("nightm.csv", stringsAsFactors = F)
p7<-ggplot(data=y6, aes(x=Month,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  scale_x_discrete(limits = month.abb)+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  ggtitle('Monthly Daytime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 12, y = 30, label = "C")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p7
p8<-ggplot(data=y7, aes(x=Month,y=Temperature,color=Time, group=Time))+
  geom_line(size=0.5)+geom_point()+
  scale_x_discrete(limits = month.abb)+
  ylab(expression(paste('SST (',degree,'C)',sep ='')))+
  ggtitle('Monthly Nighttime SST')+
  theme_classic(base_size = 12, base_family = "serif")+
  theme(legend.title = element_blank())+
  theme(legend.position="top")+
  annotate(geom = "text", x = 12, y = 30, label = "D")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.title.y = element_blank())+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p8
library(patchwork)

plot<-p5 + p6+p7+p8+plot_layout(ncol = 2)
plot
ggsave("YSSTmComparision.png",plot, dpi = 700)


#Validation plot
drifter <- read_csv("VA2.csv")
ggplot(data =drifter, 
       aes(x = drifter$MOD, y =drifter$SST))+
  geom_point()+
  geom_smooth(fill = "green", col = "red")+
  theme(panel.background = element_rect(colour=1, fill = "transparent"),
        axis.text = element_text(colour = 1, size = 12, family = "serif"), 
        axis.title = element_text(colour = 1, size = 14, family = "serif"))+
  #geom_text(aes(x = 25.5, y = 29.5, 
                #label = paste("RSq = ", 0.28)), size = 4, family = "serif")+
  annotate("text", x =25, y=30, label = "italic(R)^2== 0.28", parse=TRUE, size=4,family = "serif")+
  annotate("text", x =25.2, y=29.5, label = "italic(p)== 1.5e-05", parse=TRUE,size=4,family = "serif")+
  annotate("text", x =25, y=29, label = "italic(r)== 0.54", parse=TRUE, size=4,family = "serif")+
  annotate("text", x =25, y=28.5, label = "italic(N)== 56", parse=TRUE, size=4,family = "serif")+
  scale_x_continuous(breaks = seq(22,31, 1))+ 
  scale_y_continuous(breaks = seq(24,30, 1))+
  labs(y=expression(~MODIS~Terra~SST~(~degree~C)),
       x=expression(~italic(In-situ)~Temperature~(~degree~C)))
ggsave("Val.png", dpi = 300)
