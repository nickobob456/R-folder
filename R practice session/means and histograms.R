getwd()
setwd("~/R practice session")
library(stats)
library(base)
install.packages("ggplot2")
library("ggplot2")

basicstat1 <- read.csv("Basic Stats-1.csv", header = TRUE)
basicstat2 <- read.csv("Basic Stats-2.csv", header = TRUE)
basicstat3 <- read.csv("Basic Stats-3.csv", header = TRUE)

basicstat1

Row5mean <- rowMeans(basicstat1[5,])
Row5mean

col2mean  <- mean(basicstat1[,2])
col2mean

basicstat3

hist1 <-hist(basicstat3$Emissions..CO2eq..from.N2O..Gigagrams., main = "histogram", col = "red", xlab= "emmisions", ylab= "freq")
hist2 <-hist(basicstat3$Emissions..CO2eq..from.N2O..Gigagrams.,breaks = 5, main ="Breaks=5")

boxplot1 <-boxplot(basicstat3, horizontal = TRUE, col = "blue")
boxplot1 <-boxplot(basicstat3, vertical = TRUE, col = "green")

basicstat2
ggplot(data=basicstat2, aes(x=Close, y = Volume)) + 
  geom_bar(stat= Volume)
