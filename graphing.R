require(UsingR)
head(father.son)
require(ggplot2)
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + geom_smooth()
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + geom_smooth(method="lm")

heightMod <- lm(sheight ~ fheight, data=father.son)
heightMod
summary(heightMod)