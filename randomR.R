1+1
4 * (6 + 5)
4*6 +5
x <- 2
x
y = 7
y <- z <- 6
z <- as.Date("2013-10-04")
z
as.numeric(z)
x <- c(3, 5, 1, 5, 4)
x* 2
x^2
y <- 1:5
y
x * y
z <- 1:2
x <- 1:10
x
z
x+z
q <- 1:4
x+q
rm(z)
rm(list=ls())
gc()
3 == 7
y <- 1:10
3 != 7
y
y < 3
x = 2
x == y
A <- matrix(1:10, nrow=5)
A
B <- matrix(21:30, nrow=5)
B
D <- matrix(11:20, ncol=5)
D
A+B
A*B
B
A
A %*% D
D
x <- 1:10
y <- 10:1
q <- c("Hockey", "Lacrosse", "Curling", "Football", "Baseball", "Soccer", "Tennis", "Badminton", "Rugby", "Hockey")
theDF <- data.frame
ls()
.h <- 7
theDF <- data.frame(x, y, q)
theDF <- data.frame(A=x, B=y, Sport=q)
theDF
names(theDF)
names(theDF)[2]
names(theDF)[2] <- "Count"
theDF
x
x[3]
x[-1]
x[-c(2,4)]
x[length(x)]
tail(theDF)
head(theDF)
theDF$Count
theDF[,2]
theDF[,2:3]
theDF[2,3]
theDF[3,2]
beer <- c("Yeungling", "Heineken", "Natty Ice", "Yeungling", "Corona", "Super Bock", "PBR", "Corona", "Sapporo")
length(beer)
beerDF <- data.frame(A=1:9, Beer=beer)
beerDF2 <- data.frame(A=1:9, Beer=beer, stringsAsFactors=FALSE)
beerDF$Beer
beerDF2$Beer
beer <- as.factor(beer)
beer
levels(beer)
beer
as.numeric(beer)
model.matrix(~Beer, data=beerDF)
