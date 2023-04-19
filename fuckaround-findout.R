library(visreg)
library(dae)
library(emmeans)

data = read.csv('data.csv', sep=';')
data$exp.unit <- as.factor(data$exp.unit)
data$fps <- as.factor(data$fps)
plot(data)

m1 <- lm(kills ~ fps+ exp.unit, data=data)
summary(m1)
plot(m1)

boxplot(kills ~ fps, data=data)

visreg(m1)
a.m1 <- aov(m1)
summary(a.m1)


