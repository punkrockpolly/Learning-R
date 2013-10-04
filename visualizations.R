require(ggplot2)
head(diamonds)
boxplot(diamonds$price)
hist(diamonds$price)
plot(price ~ carat, data=diamonds)

ggplot(diamonds, aes(x=1, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin()
ggplot(diamonds, aes(x=cut, y=price)) + geom_jitter() + geom_violin()

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(binwidth=50)
?"~"

ggplot(diamonds, aes(x=price)) + geom_histogram() + facet_wrap(~cut)
ggplot(diamonds, aes(x=price)) + geom_histogram(aes(fill=cut))

g <- ggplot(diamonds, aes(x=carat, y=price))
g + geom_point() 
g + geom_point() + facet_wrap(~cut)
g + geom_point(aes(color=cut)) 
g + geom_point(aes(color=table)) + scale_color_continuous(low="blue", high="red")
g + geom_point() + facet_grid(color~clarity)
g + geom_point(aes(color=cut)) + facet_grid(color~clarity)
