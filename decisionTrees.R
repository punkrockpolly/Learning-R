require(rpart)
load(url("http://www.jaredlander.com/data/credit.rdata"))
View(credit)

ls()

x <- 2
y <- 7

save(x, y, file="mystuff.rdata")

rm(x,y)

load("mystuff.rdata")

x

creditTree <- rpart(Credit ~ CreditAmount + Age + CreditHistory + Employment, data = credit)
creditTree
typeof(creditTree)

require(rpart.plot)
rpart.plot(creditTree)