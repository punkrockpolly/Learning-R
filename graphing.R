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
summary(houseMod1)

require(coefplot)
coefplot(houseMod1)
coefplot(houseMod1, lwdOuter=1, lwdInner=2, sort="mag")
head(model.matrix(~Boro, data=housing))

houseMod2 <- lm(ValuePerSqFt ~ Units * SqFt + Boro, data=housing)
houseMod3 <- lm(ValuePerSqFt ~ Units:SqFt + Boro, data=housing)
houseMod4 <- lm(ValuePerSqFt ~ SqFt* Units * Income, data=housing)
houseMod5 <- lm(ValuePerSqFt ~ Class * Boro, data=housing)
houseMod6 <- lm(ValuePerSqFt ~ SqFt* Units * Income * Boro, data=housing)

head(model.matrix(ValuePerSqFt ~ Units * SqFt, data=housing))
# * creates new cols for multiplied values
head(model.matrix(ValuePerSqFt ~ Units : SqFt, data=housing)) 
# : used for interaction, just the multiplication
head(model.matrix(ValuePerSqFt ~ SqFt * Units * Income, data=housing)) 
# data in the matrix with additional multiplied cols

head(model.matrix(ValuePerSqFt ~ I(Units^2) + SqFt, data=housing)) 
# I() allows you to have higher order computations

houseMod7 <- lm(ValuePerSqFt ~ I(Units^2) + SqFt, data=housing)
houseMod8 <- lm(ValuePerSqFt ~ Units + SqFt, data=housing)

coef(house6)
coef(house7)
View(model.matrix(ValuePerSqFt ~ Class * Boro, housing))
unique(housing$Class)
unique(housing$Boro)

multiplot(houseMod1, houseMod2, houseMod3)

AIC(houseMod1, houseMod2, houseMod3, houseMod4, houseMod5, houseMod6, houseMod7, houseMod8)
# AIC is the approach to evaluate the suitability for model, lower the better

