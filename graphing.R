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

names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt", "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt", "NetIncome", "Value", "ValuePerSqFt", "Boro")
ggplot(housing, aes(x=ValuePerSqFt)) + geom_histogram()
ggplot(housing, aes(x=ValuePerSqFt)) + geom_histogram(aes(fill=Boro))
ggplot(housing, aes(x=ValuePerSqFt)) + geom_histogram(aes(fill=Boro)) + facet_wrap(~Boro)

housing <- housing[housing$Units < 1000, ]

houseMod1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro, data=housing)
length(unique(housing$Boro))

houseMod1