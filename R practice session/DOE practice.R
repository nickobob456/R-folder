setwd("~/R practice session")
library(stats)
library(base)
library(BSDA)

Ttest1 <-read.csv("Anova Practice 3.csv", header = TRUE)
Ttest1

Ttest1 <-t.test(Ttest1$Sample.1,
                Ttest1$Sample.2)
Ttest1