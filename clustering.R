wine <- read.table("http://www.jaredlander.com/data/wine.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
View(wine)

set.seed(2746251)
winek3 <- kmeans(x=wine, centers=3)
winek3$cluster
winek3$centers
require(useful)
plot(winek3, data=wine)
