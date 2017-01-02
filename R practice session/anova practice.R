setwd("~/R practice session")
library(stats)
library(base)
library(BSDA)

anovadata <- read.csv("Anova Practice 1.csv", header=TRUE)
anovadata

lmanova <-lm(R~G*F+O, data = anovadata)
lmanova
summary(aov(lmanova))

lmanova <-lm(R~G+F+O, data = anovadata)
summary(aov(lmanova))