wine <- read.table("http://www.jaredlander.com/data/wine.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
View(wine)

set.seed(2746251)
winek3 <- kmeans(x=wine, centers=3)
winek3$cluster
winek3$centers
require(useful)
plot(winek3, data=wine)

# Dendrogram for measuing heiarchical clusters (euclidian distance) AKA cluster trees
wineH <- hclust(d = dist(wine))
dist(wine) 
# calculates distance between rows of data
# scale is how far apart they are

plot(wineH)

rect.hclust(wineH, k=3, border = "red")
rect.hclust(wineH, k=13, border = "blue")