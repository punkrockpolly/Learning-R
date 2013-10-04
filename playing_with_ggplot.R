require(ggplot2)
data(diamonds)
head(diamonds)
mean(diamonds$price)
aggregate(price ~ cut, data=diamonds, mean)
aggregate(price ~ cut + color, data=diamonds, mean)
diaMean <- aggregate(price ~ cut + color, data=diamonds, mean)
diaMean[order(diaMean$price, decreasing=TRUE),]
order(c(1,3,4,2))
diaMean
sort(c(1, 3, 4, 2))
x
x[c(1,4)]
x[c(4,1)]

aggregate(cbind(price, carat) ~ cut, data=diamonds, mean)
aggregate(price ~ cut, data=diamonds, plyr::each(mean, sum))

require(plyr)

ddply
llply
list1 <- list(A=1:10, B=matrix(1:9, ncol=3), c=4)
list1
llply

meanSum <- function(data)
{
  return(c(Mean.Price=mean(data$price), Sum.Carat=sum(data$carat)))
}

ls()
meanSum
ddply(diamonds, "cut", meanSum)
