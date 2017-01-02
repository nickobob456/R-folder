setwd("~/R practice session")
library(qcc)

rawdataspc1 <-read.csv("SPC Practice 1.csv", header=TRUE)
rawdataspc1

xbarchart1 <-qcc(rawdataspc1[,2:4],
                 type =c("xbar"),
                 sizes = ncol(rawdataspc1[,2:4]),
                 title = "Xbarchart1")
xbarchart1 <-qcc(rawdataspc1[,2:4],
                 type =c("R"),
                 sizes = ncol(rawdataspc1[,2:4]),
                 title = "Rchart1")