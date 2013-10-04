require(UsingR)
head(father.son)
require(ggplot2)
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + geom_smooth()
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + geom_smooth(method="lm")

heightMod <- lm(sheight ~ fheight, data=father.son)
heightMod
summary(heightMod)
?father.son
33.8 + .514*father.son$fheight
housing <- read.table("http://jaredlander.com/data/housing.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
View(housing)