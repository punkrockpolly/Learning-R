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