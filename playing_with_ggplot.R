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

meanSum2 <- function(data, col1, col2, func1, func2)
{
  return(
    c(Fist=func1(data[, col1]), Second=func2(data[,col2]))
    )
  
}

ddply(diamonds, "cut", meanSum2, col1="price", col2="carat", func1=mean, func2=sum)

codes <- read.table("http://www.jaredlander.com/data/countryCodes.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
countries <- read.table("http://www.jaredlander.com/data/GovType.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)

head(countries)
View(countries)
names(countries)
names(codes)
attributes(codes)

