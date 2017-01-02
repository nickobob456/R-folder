getwd()
setwd("~/R practice session")
library(stats)
library("ggplot2")

set.seed(955)
# Make some noisily increasing data
dat <- data.frame(cond = rep(c("A", "B"), each=10),
                  xvar = 1:20 + rnorm(20,sd=3),
                  yvar = 1:20 + rnorm(20,sd=3))
head(dat)

# how to show multiple plots grid.arrange(p2, p3, p4, nrow=1)
#p1 <- ggplot(mtc, aes(x = hp, y = mpg))
#p1 + geom_point()
#p2 <- p1 + geom_point(color="red")            #set one color for all points
#p3 <- p1 + geom_point(aes(color = wt))        #set color scale by a continuous variable
#p4 <- p1 + geom_point(aes(color=factor(am)))  #set color scale by a factor variable

grid.arrange(p2, p3, p4, nrow=1)

ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1)      # Use hollow circles

ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm)   # Add linear regression line 
#  (by default includes 95% confidence region)

ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth(method=lm,   # Add linear regression line
              se=FALSE)    # Don't add shaded confidence region


ggplot(dat, aes(x=xvar, y=yvar)) +
  geom_point(shape=1) +    # Use hollow circles
  geom_smooth()            # Add a loess smoothed fit curve with confidence region

# Set color by cond
ggplot(dat, aes(x=xvar, y=yvar, color=cond)) + geom_point(shape=1)

# Same, but with different colors and add regression lines
ggplot(dat, aes(x=xvar, y=yvar, color=cond)) +
  geom_point(shape=1) +
  scale_colour_hue(l=50) + # Use a slightly darker palette than normal
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE)    # Don't add shaded confidence region

# Extend the regression lines beyond the domain of the data
ggplot(dat, aes(x=xvar, y=yvar, color=cond)) + geom_point(shape=1) +
  scale_colour_hue(l=50) + # Use a slightly darker palette than normal
  geom_smooth(method=lm,   # Add linear regression lines
              se=FALSE,    # Don't add shaded confidence region
              fullrange=TRUE) # Extend regression lines


# Set shape by cond
ggplot(dat, aes(x=xvar, y=yvar, shape=cond)) + geom_point()

# Same, but with different shapes
ggplot(dat, aes(x=xvar, y=yvar, shape=cond)) + geom_point() +
  scale_shape_manual(values=c(1,2))  # Use a hollow circle and triangle