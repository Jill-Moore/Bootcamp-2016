##Day 4 - Take home assignment solutions
##Jill Moore
##September 8, 2016

library(ggplot2)

experiment1=read.table("~/Dropbox (UMASS MED - BIB)/Bootcamp/exp_design_and_data_analysis_bootcamp_2016/afternoon_session_notes/Day4/Experiment-September.txt", header=T)


#Makes basic scatterplot
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration))+geom_point()

#Colors points by group
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()

#Sets colors to red and green
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"))

#Adds labels to axes
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"))+xlab("Temperature [C]")+ylab("Concentration")

#Adds title to graph
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"))+xlab("Temperature [C]")+ylab("Concentration")+ggtitle("Example Graph")

#Adds title to legend
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"), name="Groups")+xlab("Temperature [C]")+ylab("Concentration")+ggtitle("Example Graph")

#Changes Axis
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"), name="Groups")+xlab("Temperature [C]")+ylab("Concentration")+ggtitle("Example Graph")+coord_cartesian(x=c(0,100), y=c(0,150))

#or

ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+scale_color_manual(values=c("red", "green"), name="Groups")+xlab("Temperature [C]")+ylab("Concentration")+ggtitle("Example Graph")+scale_x_continuous(limits=c(0,100),expand=c(0,0))+scale_y_continuous(limits=c(0,150),expand=c(0,0))


#Add lines to plot connecting dots
ggplot(data=experiment1, aes(x=experiment1$Temperature, y=experiment1$Concentration, color=experiment1$Group))+geom_point()+geom_line()+scale_color_manual(values=c("red", "green"), name="Groups")+xlab("Temperature [C]")+ylab("Concentration")+ggtitle("Example Graph")+scale_x_continuous(limits=c(0,100),expand=c(0,0))+scale_y_continuous(limits=c(0,150),expand=c(0,0))

