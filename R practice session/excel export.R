library(xlsx)

set.seed(2534)  # for reproducibility
nosim  <- 300  # number of simulated averages
lambda <- 1   # rate parameter
data  <- data.frame( x = rexp(nosim*1, lambda))
head(data)

write.xlsx(data, "C:/Users/Nicholas/Documents/mydata.xlsx")
