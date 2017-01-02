setwd("~/R practice session")
install.packages("gridExtra")
library(ggplot2)
library(gridExtra)
mtc <- mtcars

# Basic scatterplot
p1 <- ggplot(mtc, aes(x = hp, y = mpg))

# Print plot with default points
p1 + geom_point()

p2 <- p1 + geom_point(color="red")            #set one color for all points
p3 <- p1 + geom_point(aes(color = wt))        #set color scale by a continuous variable
p4 <- p1 + geom_point(aes(color=factor(am)))  #set color scale by a factor variable

grid.arrange(p2, p3, p4, nrow=1)
