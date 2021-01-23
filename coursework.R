read.csv(dataset)
colnames(dataset)
ndim(dataset)
str(dataset)
as.factor(dataset$Group)
qplot(dataset$Score.2)
require("ggplot2")


#1D Discrete Data
ggplot(data=dataset, aes(x=Group))+
  geom_bar()

ggplot(data=dataset, aes(x=Gender))+
  geom_bar()

ggplot(data=dataset, aes(x=Wind.Direction))+
  geom_bar()

#1D Continuous Data
ggplot(data = dataset, aes(x = Age)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(x = Age, y = Group)) +
  geom_boxplot(fill = "#0073C2FF",  outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Age)) +
  geom_histogram(fill = "#0073C2FF", binwidth = 20)


ggplot(data = dataset, aes(x = Offset)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(x = Offset, y = Group)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Group, y =Offset , fill=Gender)) +
  geom_boxplot( outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE) +facet_wrap(~Wind.Direction)
ggplot(data = dataset, aes(x = Offset, y = Wind.Direction)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Offset)) +
  geom_histogram(fill = "#0073C2FF", binwidth = 20)



ggplot(data = dataset, aes(x = Score.1)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(y = Score.1, x=Group)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Score.1)) +
  geom_histogram(fill = "#0073C2FF", binwidth = 20)


ggplot(data = dataset, aes(x = Score.2)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(y = Score.2, x = Group)) +
  geom_boxplot(outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(y = Score.2, x = Gender)) +
  geom_boxplot(outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(y = Score.2, x = Wind.Direction)) +
  geom_boxplot(outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Score.2)) +
  geom_histogram(fill = "#0073C2FF", binwidth = 20)


ggplot(data = dataset, aes(x = Height)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(x = Height, y = Group)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Height)) +
  geom_histogram(fill = "#0073C2FF", binwidth=20)


ggplot(data = dataset, aes(x = Distance)) +
  geom_histogram(fill = "#0073C2FF", binwidth=1)
ggplot(data = dataset, aes(y = Distance, x = Group)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Distance, y = Gender)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Distance, y = Wind.Direction)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Distance)) +
  geom_histogram(fill = "#0073C2FF", binwidth=20)


ggplot(data = dataset, aes(x = Angle)) +
  geom_histogram(fill = "#0073C2FF")
ggplot(data = dataset, aes(x = Angle, y = Group)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Angle, y = Gender)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Angle, y = Wind.Direction)) +
  geom_boxplot(fill = "#0073C2FF", outlier.colour="red",
               outlier.shape=16,
               outlier.size=2, notch=FALSE)
ggplot(data = dataset, aes(x = Angle)) +
  geom_histogram(fill = "#0073C2FF", binwidth=20)

#2D Data


#Both Dimensions are discrete
ggplot(dataset, aes(fill=Gender, y=Wind.Direction, x=Group)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Gender, y=Wind.Direction, x=Group)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes(fill=Gender, y=Group, x=Wind.Direction)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Gender, y=Group, x=Wind.Direction)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")


ggplot(dataset, aes(fill=Wind.Direction, y=Gender, x=Group)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Wind.Direction, y=Gender, x=Group)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes(fill=Wind.Direction, y=Group, x=Gender)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Wind.Direction, y=Group, x=Gender)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes(fill=Group, y=Wind.Direction, x=Gender)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Group, y=Wind.Direction, x=Gender)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes(fill=Group, y=Gender, x=Wind.Direction)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill=Group, y=Gender, x=Wind.Direction)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")


#One Dimension is Discrete and one continuous

#Gender discrete
ggplot(dataset, aes(fill = Group, x = Gender , y = Age)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Group, x = Gender , y = Age)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Gender , y = Offset)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Offset)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Gender , y = Angle)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Angle)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Gender , y = Score.1)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Score.1)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")


ggplot(dataset, aes( x = Gender , y = Score.2)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Score.2)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")


ggplot(dataset, aes( x = Gender , y = Height)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Height)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Gender , y = Distance)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Gender , y = Distance)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

#Wind Direction - discrete

ggplot(dataset, aes( x = Wind.Direction , y = Age)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Wind.Direction , y = Age)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Offset)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Wind.Direction , y = Offset)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Score.1)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Wind.Direction , y = Score.1)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Score.2)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(x = Wind.Direction , y = Score.2)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Height)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Group ,x = Wind.Direction , y = Height)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Distance)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Group ,x = Wind.Direction , y = Distance)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Wind.Direction , y = Angle)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Group , x = Wind.Direction , y = Angle)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

#Group as discrete

dataset$Group <- factor(dataset$Group, levels = c("N", "E", "V", "P" ))

ggplot(dataset, aes( x = Group , y = Age)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Age)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Offset)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Offset)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Score.1)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Score.1)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Score.2)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Score.2)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Height)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Height)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Distance)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Distance)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

ggplot(dataset, aes( x = Group , y = Angle)) +
  geom_bar(position="stack", stat="identity")
ggplot(dataset, aes(fill = Wind.Direction, x = Group , y = Angle)) +
  geom_bar(position="dodge", stat="identity") +
  ggtitle("Studying 4 species..") +
  xlab("")

#both dimenstions are continuous

#Age main
ggplot(dataset, aes(x=Age, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Age, y=Offset)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Age, y=Score.1)) + geom_point()
ggplot(dataset, aes(x=Age, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Age, y=Score.1)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Age, y=Score.2)) + geom_point()
ggplot(dataset, aes(x=Age, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))#------------------------------------
ggplot(dataset, aes(x=Age, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Age, y= Height)) + geom_point()
ggplot(dataset, aes(x=Age, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Age, y=Height)) + geom_point(aes(color = factor(Group)))


ggplot(dataset, aes(x=Age, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Age, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Age, y=Distance)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Age, y= Angle)) + geom_point()
ggplot(dataset, aes(x=Age, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Age, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Age, y=Angle)) + geom_point(aes(color = factor(Group)))

#Offset main
ggplot(dataset, aes(x=Offset, y= Age)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Age)) + geom_point(aes(color = factor(Group)))


ggplot(dataset, aes(x=Offset, y= Score.1)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Score.1)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Offset, y= Score.2)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Offset, y= Height)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Height)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Offset, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Distance)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Offset, y= Angle)) + geom_point()
ggplot(dataset, aes(x=Offset, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Offset, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Offset, y=Angle)) + geom_point(aes(color = factor(Group)))

#Score.1 main

ggplot(dataset, aes(x=Score.1, y= Age)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Age)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.1, y= Score.2)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.1, y= Height)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Height)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.1, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Distance)) + geom_point(aes(color = factor(Group)))


ggplot(dataset, aes(x=Score.1, y=Angle)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Angle)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.1, y=Offset)) + geom_point()
ggplot(dataset, aes(x=Score.1, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.1, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.1, y=Offset)) + geom_point(aes(color = factor(Group)))


#Score.2 main

ggplot(dataset, aes(x=Score.2, y= Age)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Age)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.2, y= Score.1)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Score.1)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.2, y=Height)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Height)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.2, y=Distance)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Distance)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.2, y=Angle)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Angle)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Score.2, y=Offset)) + geom_point()
ggplot(dataset, aes(x=Score.2, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Score.2, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Score.2, y=Offset)) + geom_point(aes(color = factor(Group)))

#Height main
ggplot(dataset, aes(x=Height, y= Age)) + geom_point()
ggplot(dataset, aes(x=Height, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Age)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Height, y= Offset)) + geom_point()
ggplot(dataset, aes(x=Height, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Offset)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Height, y= Score.1)) + geom_point()
ggplot(dataset, aes(x=Height, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Score.1)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Height, y= Score.2)) + geom_point()
ggplot(dataset, aes(x=Height, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Height, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Height, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Distance)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Height, y= Angle)) + geom_point()
ggplot(dataset, aes(x=Height, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Height, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Height, y=Angle)) + geom_point(aes(color = factor(Group)))

#Distance main

ggplot(dataset, aes(x=Distance, y= Age)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Age)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Distance, y= Offset)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Offset)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Distance, y= Score.1)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Score.1)) + geom_point(aes(color = factor(Group)))


ggplot(dataset, aes(x=Distance, y= Score.2)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Distance, y= Height)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Height)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Distance, y= Angle)) + geom_point()
ggplot(dataset, aes(x=Distance, y=Angle)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Distance, y=Angle)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Distance, y=Angle)) + geom_point(aes(color = factor(Group)))

#Angle main

ggplot(dataset, aes(x=Angle, y= Age)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Age)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Age)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Age)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Angle, y= Offset)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Offset)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Offset)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Offset)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Angle, y= Score.1)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Score.1)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Score.1)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Score.1)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Angle, y= Score.2)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Score.2)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Score.2)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Angle, y= Height)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Height)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Height)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Height)) + geom_point(aes(color = factor(Group)))

ggplot(dataset, aes(x=Angle, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Angle, y=Distance)) + geom_point(aes(color = factor(Gender)))
ggplot(dataset, aes(x=Angle, y=Distance)) + geom_point(aes(color = factor(Wind.Direction)))
ggplot(dataset, aes(x=Angle, y=Distance)) + geom_point(aes(color = factor(Group)))

#Looking for patterns

#Group main - filling Gender
ggplot(data=dataset, aes(x=Group, y=Age, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Height, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Distance, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Angle, fill = Gender)) +
  geom_boxplot()

#Group main - fillind Wind.Direction
ggplot(data=dataset, aes(x=Group, y=Age, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Offset, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Distance, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Group, y=Angle, fill = Wind.Direction)) +
  geom_boxplot()

#Wind.Direction main - filling Gender

ggplot(data=dataset, aes(x=Wind.Direction, y=Age, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Offset, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Score.1, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Height, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Distance, fill = Gender)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Angle, fill = Gender)) +
  geom_boxplot()

#Wind.Direction Main - filling Group
ggplot(data=dataset, aes(x=Wind.Direction, y=Age, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Offset, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Score.1, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Height, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Distance, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Wind.Direction, y=Angle, fill = Group)) +
  geom_boxplot()

#Gender Main - Group Filling
ggplot(data=dataset, aes(x=Gender, y=Age, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Score.1, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Height, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Distance, fill = Group)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Angle, fill = Group)) +
  geom_boxplot()

#Gender Main - Wind.Direction filling
ggplot(data=dataset, aes(x=Gender, y=Age, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Score.1, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Height, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Distance, fill = Wind.Direction)) +
  geom_boxplot()

ggplot(data=dataset, aes(x=Gender, y=Angle, fill = Wind.Direction)) +
  geom_boxplot()

#Trying out
#Age - Nothing
ggplot(data=dataset, aes(x=Group, y=Age, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Age, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Gender, y=Age, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Age, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Age, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Age, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Age, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)
#Offset - Group - Offset -Gender most clear
ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +
  geom_boxplot() #--------------------------------------------------------------------------------------------------------
ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Offset, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Offset, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Offset, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)

#Score.1 - there is a difference for Very experienced, does not depend on wind direction nor the Gender
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Gender, y=Score.1, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.1, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.1, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Score.1, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)

#Score.2 - something but does not depend on gender but def on Wind.Direction (E and W)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2)) +
  geom_boxplot()#---------??????????????--------------??????????????-----------??????????????------------???????????????
ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Gender)) +
  geom_boxplot()  # nothing
ggplot(data=dataset, aes(x=Group, y=Score.2, fill=Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction) # something but does not depend on gender but def on Wind.Direction (E and W)
ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)

#Height -Males that are professional depending on the wind (N and S) have lower or higherr
ggplot(data=dataset, aes(x=Group, y=Height, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Height, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction) #something interesting
ggplot(data=dataset, aes(x=Gender, y=Height, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)# Males that are professional depending on the wind (N and S) have lower or higher
ggplot(data=dataset, aes(x=Wind.Direction, y=Height, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Height, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Height, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)

#Distance - nothing
ggplot(data=dataset, aes(x=Group, y=Distance, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Distance, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Gender, y=Distance, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Distance, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Distance, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Distance, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Distance, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)

#Angle
ggplot(data=dataset, aes(x=Group, y=Angle, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Angle, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Gender, y=Angle, fill = Group)) +
  geom_boxplot() + facet_wrap(~Wind.Direction)
ggplot(data=dataset, aes(x=Group, y=Angle, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Angle, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Angle, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Gender, y=Angle, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Group)
#1 Relationship/ pattern  between the female and the offset (depending on the group)----------------------------------------
ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Group)) +
  geom_boxplot()
#ggplot(data=dataset, aes(x=Gender, y=Offset, fill = Group)) +
  #geom_boxplot() + facet_wrap( ~ Wind.Direction)

#May be a relationsip/pattern between the Verry Proffesional that have a bigger Score.1 in both genders---------------------
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) +
  geom_boxplot() + facet_wrap( ~ Wind.Direction)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.1, fill = Gender)) +
  geom_boxplot() + facet_wrap( ~ Group)

#?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot()
#ggplot(data=dataset, aes(x=Gender, y=Score.2, fill = Wind.Direction)) +
#  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Group, y=Score.2, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Gender)) +
  geom_boxplot() + facet_wrap(~Group)
ggplot(data=dataset, aes(x=Wind.Direction, y=Score.2, fill = Group)) +
  geom_boxplot() + facet_wrap(~Gender)

#Definitely a relationship between the Male's and wind direction depending on the group-----------------------------------------
ggplot(data=dataset, aes(x=Gender, y=Height, fill = Wind.Direction)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Wind.Direction, y=Height, fill = Gender)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +
  geom_boxplot()
ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +
  geom_boxplot() + facet_wrap(~Gender) #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

dataset$Group <- factor(dataset$Group, levels = c("N", "E", "V", "P"))

dataset$Wind.Direction <- factor(dataset$Wind.Direction, levels = c("N", "S", "E", "W"))
#Relationsips

a<-ggplot(dataset, aes(x=Angle, y= Distance)) + geom_point() +  geom_smooth(linetype="dashed", fill="white", color = "white")+  theme_minimal()
a + ggtitle("Throw Distance depending on the Angle") + scale_color_brewer(palette="Accent")

b<-ggplot(dataset, aes(x=Age, y=Score.2)) + geom_point(aes(color = factor(Wind.Direction), shape=Wind.Direction), size = 2) + theme_minimal()
b$labels$colour <- "Wind Direction"
b$labels$shape <-"Wind Direction"
b + ggtitle("Score 2 depending on Age agains Wind Direction") + scale_colour_manual(values=c("#DCDCDC","#A9A9A9","#f51717","#a40606"), labels = c("North", "South", "East", "West")) + scale_shape_manual(values=c(15, 16, 17,18), labels = c("North","South", "East", "West"))
                                                                                   #, values = c("#e66101", "#fdb863", "#b2abd2", "#5e3c99"))

#Removed outliers - not used
k<-ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) + geom_boxplot(outlier.size = 0) + facet_grid(~Group~Gender) + ylim(0,80) + theme_light() + facet_grid((Gender) ~ ., labeller = as_labeller(genderNamers))
k$labels$fill <- "Wind Direction"
k + ggtitle("Throw Height depending on Experience level") + labs(x="Experience Level", y ="Throw Height")  +  scale_fill_manual(labels = c("North", "South", "East", "West"), values = c("#FDE725FF", "#35B779FF", "#440154FF", "#31688EFF"))


d<-ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +geom_boxplot() +  theme_minimal()
d + ggtitle("Throw Offset depending on Experience level") + labs(x="Experience Level", y ="Throw Offset") + scale_fill_manual(labels = c("Female", "Male"), values = c("#FDE725FF", "#414487FF"))

e<- ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Group)) + geom_boxplot() + theme_minimal()
e +  ggtitle("Score 1 depending on Experience level") + labs(x="Experience Level", y ="Score 1") + scale_fill_manual(values=c("#440154FF","#31688EFF","#FDE725FF","#35B779FF"),label = c ("Novice","Experienced", "Very Experienced","Professional"))



library(scales)
show_col(viridis_pal()(6))
q_colors =  15 # for no particular reason
v_colors =  viridis(q_colors, option = &amp;quot;D&amp;quot;)

 #facet_grid((Group) ~ ., labeller = as_labeller(groupNames))
summary(dataset)


#Outliers

ggplot(data = dataset, aes(x = Height)) +
  geom_histogram(fill = "#2D708EFF", binwidth=11) + theme_minimal()
ggplot(data=dataset, aes(y=Height))+geom_boxplot() + theme_minimal() + scale_color_brewer(palette="Accent")


ggplot(dataset, aes(x=Angle, y= Distance) + geom_point()

ggplot(dataset, aes(x=Age, y= Distance)) + geom_point() + theme_minimal()
ggplot(dataset, aes(x=Offset, y= Distance)) + geom_point()
ggplot(dataset, aes(x=Score.1, y= Distance)) + geom_point() + theme_minimal()
ggplot(dataset, aes(x=Score.2, y= Distance)) + geom_point()

#SCORE 1
install.packages("forcats")
groupNames <- c(
  N = "Novice",
  E = "Experienced",
  V = "Very Experienced",
  P = "Professional"
)
genderNamers <-c(
  F = "Female",
  M = "Male"
)

k<-ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_wrap(~Gender) + ylim(0,80) + theme_light() + facet_grid((Gender) ~ ., labeller = as_labeller(genderNamers))
k$labels$fill <- "Wind Direction"
k + ggtitle("Throw Height depending on Experience level") + labs(x="Experience Level", y ="Throw Height") + scale_fill_manual(labels = c("East", "North", "South", "West")) +  scale_fill_viridis_d(labels = c("East", "North", "South", "West"))


summary(dataset)

ggplot(data=dataset, aes(x=Angle, y=Offset, fill=Wind.Direction)) + geom_boxplot() + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_wrap(~Gender) + ylim(0,80) + theme_light() + facet_grid((Gender) ~ ., labeller = as_labeller(genderNamers))

install.packages("viridis")
library(viridis)

#Trying different combinations - Height - I do not know
ggplot(data=dataset, aes(x=Distance, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Age, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Angle, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Score.1, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Score.2, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)
ggplot(data=dataset, aes(x=Distance, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_grid(Group~Gender)


ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_wrap(Wind.Direction~Gender) + ylim(0,80) + theme_light() + facet_grid((Gender) ~ ., labeller = as_labeller(genderNamers))
ggplot(data=dataset, aes(x=Group, y=Offset, fill = Gender)) +geom_boxplot() +  theme_minimal()
ggplot(data=dataset, aes(x=Age, y=Offset, fill = Gender)) +geom_boxplot() +  theme_minimal() + facet_grid(Group~Wind.Direction)
ggplot(data=dataset, aes(x=Height, y=Offset, fill = Gender)) +geom_boxplot() +  theme_minimal() + facet_grid(Group~Wind.Direction)


ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Gender)) + geom_boxplot() + theme_minimal()
ggplot(data=dataset, aes(x=Group, y=Distance, fill = Gender)) + geom_boxplot() + theme_minimal() + facet_grid(~Wind.Direction)


ggplot(data=dataset, aes(x=Group, y=Score.1, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_wrap(~Gender) + ylim(0,80) + theme_light() + facet_grid((Gender) ~ ., labeller = as_labeller(genderNamers))

#Removed outliers - not used
#c<-ggplot(data=dataset, aes(x=Group, y=Height, fill = Wind.Direction)) +geom_boxplot(outlier.size = 0) + facet_wrap(~Gender) + ylim(0,80) + theme_light()
gender <- c("Female", "Male")
#c$labels$fill <- "Wind Direction"
#c + ggtitle("Throw Height depending on Experience level") + labs(x="Experience Level", y ="Throw Height") + scale_fill_manual(labels = c("East", "North", "South", "West"),values = c("#440154FF", "#2D708EFF", "#20A387FF", "#FDE725FF"))
#c + scale_fill_viridis_d()
