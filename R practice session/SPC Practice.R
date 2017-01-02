setwd("C:\Users\Nicholas\Documents\R practice session")
library(qcc)

#import the data into a data frame#
RawDataSPC1_1 <- read.csv("SPC Practice 1.csv",header = TRUE)
RawDataSPC1_1

#Create Xbar and R chart#
Xbarchart1_1 <- qcc(RawDataSPC1_1[,2:4],
                    type = c("xbar"),
                    sizes = ncol(RawDataSPC1_1),
                    title = "Xbarchart1_1")
Rchart1_1 <- qcc(RawDataSPC1_1[,2:4],
                  type = c("R"),
                  sizes = ncol(RawDataSPC1_1),
                  title = "Rchart1_1")

#Lets Capability of Process
Cpk1_1 <- process.capability(Xbarchart1_1,
                             spec.limits = c(0.0615,0.064123),
                             target = 0.063)