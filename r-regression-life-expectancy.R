data <- read.csv("Life Expectancy Data.csv", header=TRUE)
head(data)

#### Data Tidy ########################################################################
####1/ Random sampling
set.seed(123)
sample <- sample.int(n = nrow(data), size = floor(.75*nrow(data)), replace = F) #75% of dataset 
train <- data[sample, ]
test <- data[-sample, ]
nrow(train)
nrow(test)

attach(train)

y <- Life.expectancy
x1 <- Year
x2 <- Status
x3 <- Adult.Mortality
x4 <- infant.deaths
x5 <- Alcohol
x6 <- percentage.expenditure
x7 <- Hepatitis.B
x8 <- Measles
x9 <- BMI
x10 <- under.five.deaths
x11 <- Polio
x12 <- Total.expenditure
x13 <- Diphtheria
x14 <- HIV.AIDS
x15 <- GDP
x16 <- Population
x17 <- thinness..1.19.years
x18 <- thinness.5.9.years
x19 <- Income.composition.of.resources
x20 <- Schooling


####2/ Distribution of variables
##Boxplot
par(mfrow=c(4,5))
boxplot(y, xlab = "Life Expectancy, y")
boxplot(x1, xlab = "Year, x1")
boxplot(x3, xlab = "Adult Mortality, x3")
boxplot(x4, xlab = "Infant Deaths, x4")
boxplot(x5, xlab = "Alcohol, x5")
boxplot(x6, xlab = "Percentage Expenditure, x6")
boxplot(x7, xlab = "Hepatitis B, x7")
boxplot(x8, xlab = "Measles, x8")
boxplot(x9, xlab = "BMI, x9")
boxplot(x10, xlab = "Under five deaths, x10")
boxplot(x11, xlab = "Polio, x11")
boxplot(x12, xlab = "Total expenditure, x12")
boxplot(x13, xlab = "Diphtheria, x13")
boxplot(x14, xlab = "HIV.AIDS, x14")
boxplot(x15, xlab = "GDP, x15")
boxplot(x16, xlab = "Population, x16")
boxplot(x17, xlab = "Thinness..1.19.years,  x17")
boxplot(x18, xlab = "thinness.5.9.years, x18")
boxplot(x19, xlab = "Income.composition.of.resources, x19")
boxplot(x20, xlab = "Schooling, x20")

##Density
par(mfrow=c(4,5))
plot(density(y, bw="SJ", kern="gaussian"), main = "Life Expectancy, y",xlab="", ylab="")
plot(density(x1,bw="SJ", kern="gaussian"), main = "Year, x1",xlab="", ylab="")
plot(density(x3, bw="SJ", kern="gaussian"), main = "Adult Mortality, x3",xlab="", ylab="")
plot(density(x4, bw="SJ", kern="gaussian"), main = "Infant Deaths, x4",xlab="", ylab="")
plot(density(x5,bw="SJ", kern="gaussian"), main = "Alcohol, x5",xlab="", ylab="")
plot(density(x6, bw="SJ", kern="gaussian"), main = "Percentage Expenditure, x6",xlab="", ylab="")
plot(density(x7, bw="SJ", kern="gaussian"), main = "Hepatitis B, x7",xlab="", ylab="")
plot(density(x8, bw="SJ", kern="gaussian"), main = "Measles, x8",xlab="", ylab="")
plot(density(x9, bw="SJ", kern="gaussian"), main = "BMI, x9",xlab="", ylab="")
plot(density(x10, bw="SJ", kern="gaussian"), main ="Under five deaths, x10",xlab="", ylab="")
plot(density(x11, bw="SJ", kern="gaussian"), main = "Polio, x11",xlab="", ylab="")
plot(density(x12, bw="SJ", kern="gaussian"), main = "Total expenditure, x12",xlab="", ylab="")
plot(density(x13, bw="SJ", kern="gaussian"), main ="Diphtheria, x13",xlab="", ylab="")
plot(density(x14, bw="SJ", kern="gaussian"), main = "HIV.AIDS, x14",xlab="", ylab="")
plot(density(x15, bw="SJ", kern="gaussian"), main = "GDP, x15",xlab="", ylab="")
plot(density(x16, bw="SJ", kern="gaussian"), main ="Population, x16",xlab="", ylab="")
plot(density(x17, bw="SJ", kern="gaussian"), main = "Thinness..1.19.years,  x17",xlab="", ylab="")
plot(density(x18, bw="SJ", kern="gaussian"), main = "thinness.5.9.years, x18",xlab="", ylab="")
plot(density(x19, bw="SJ", kern="gaussian"), main = "Income.composition.of.resources, x19",xlab="", ylab="")
plot(density(x20, bw="SJ", kern="gaussian"), main ="Schooling, x20",xlab="", ylab="")

##Histogram
par(mfrow=c(4,5))
hist(y, xlab="", ylab="")
hist(x1, xlab="", ylab="")
hist(x3, xlab="", ylab="")
hist(x4, xlab="", ylab="")
hist(x5, xlab="", ylab="")
hist(x6, xlab="", ylab="")
hist(x7, xlab="", ylab="")
hist(x8, xlab="", ylab="")
hist(x9, xlab="", ylab="")
hist(x10, xlab="", ylab="")
hist(x11, xlab="", ylab="")
hist(x12, xlab="", ylab="")
hist(x13, xlab="", ylab="")
hist(x14, xlab="", ylab="")
hist(x15, xlab="", ylab="")
hist(x16, xlab="", ylab="")
hist(x17, xlab="", ylab="")
hist(x18, xlab="", ylab="")
hist(x19, xlab="", ylab="")
hist(x20, xlab="", ylab="")


##QQ
par(mfrow=c(4,5))
qqnorm(y, main = "Life Expectancy, y", xlab="", ylab="")
qqline(y, main = "Life Expectancy, y", xlab="", ylab="")
qqnorm(x1, main = "Year, x1", ylab="")
qqline(x1, main = "Year, x1", ylab="")
qqnorm(x3, main = "Adult Mortality, x3", xlab="",ylab="")
qqline(x3, main = "Adult Mortality, x3", xlab="",ylab="")
qqnorm(x4, main = "Infant Deaths, x4", xlab="",ylab="")
qqline(x4, main = "Infant Deaths, x4", xlab="",ylab="")
qqnorm(x5, main = "Alcohol, x5", xlab="",ylab="")
qqline(x5, main = "Alcohol, x5", xlab="",ylab="")
qqnorm(x6, main = "Percentage Expenditure, x6", xlab="",ylab="")
qqline(x6, main = "Percentage Expenditure, x6", xlab="",ylab="")
qqnorm(x7, main = "Hepatitis B, x7", xlab="",ylab="")
qqline(x7, main = "Hepatitis B, x7", xlab="",ylab="")
qqnorm(x8, main = "Measles, x8", xlab="",ylab="")
qqline(x8, main = "Measles, x8", xlab="",ylab="")
qqnorm(x9, main = "BMI, x9", xlab="",ylab="")
qqline(x9, main = "BMI, x9", xlab="",ylab="")
qqnorm(x10, main = "Under five deaths, x10", xlab="",ylab="")
qqline(x10, main = "Under five deaths, x10", xlab="",ylab="")
qqnorm(x11, main = "Polio, x11", xlab="",ylab="")
qqline(x11, main = "Polio, x11", xlab="",ylab="")
qqnorm(x12, main = "Total expenditure, x12", xlab="",ylab="")
qqline(x12, main = "Total expenditure, x12", xlab="",ylab="")
qqnorm(x13, main = "Diphtheria, x13", xlab="",ylab="")
qqline(x13, main = "Diphtheria, x13", xlab="",ylab="")
qqnorm(x14, main = "HIV.AIDS, x14", xlab="",ylab="")
qqline(x14, main = "HIV.AIDS, x14", xlab="",ylab="")
qqnorm(x15, main = "GDP, x15", xlab="",ylab="")
qqline(x15, main = "GDP, x15", xlab="",ylab="")
qqnorm(x16, main = "Population, x16", xlab="",ylab="")
qqline(x16, main = "Population, x16", xlab="",ylab="")
qqnorm(x17, main = "Thinness..1.19.years,  x17", xlab="",ylab="")
qqline(x17, main = "Thinness..1.19.years,  x17", xlab="",ylab="")
qqnorm(x18, main = "thinness.5.9.years, x18", xlab="",ylab="")
qqline(x18, main = "thinness.5.9.years, x18", xlab="",ylab="")
qqnorm(x19, main = "Income.composition.of.resources, x19", xlab="",ylab="")
qqline(x19, main = "Income.composition.of.resources, x19", xlab="",ylab="")
qqnorm(x20, main = "Schooling, x20", xlab="",ylab="")
qqline(x20, main = "Schooling, x20", xlab="",ylab="")


#### Full Model ########################################################################
m <- lm(y~x1+factor(x2)+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17+x18+x19+x20)
summary(m)
par(mfrow=c(2,2))
plot(m)



#### MODEL 1 ########################################################################
###1/ Best subset
install.pakages(leaps)
library(leaps)
X <- cbind(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20)
BS <- regsubsets(as.matrix(X),y)
summary(BS)

##Best subset models
bm1 <- lm(y~x20)
bm2 <- lm(y~x14+x20)
bm3 <- lm(y~x3+x14+x20)
bm4 <- lm(y~x3+x14+x19+x20)
bm5 <- lm(y~x3+x9+x14+x19+x20)
bm6 <- lm(y~x3+x4+x10+x14+x19+x20)
bm7 <- lm(y~x3+x4+x6+x10+x14+x19+x20)
bm8 <- lm(y~x3+x4+x6+x9+x10+x14+x19+x20)


## Calculate adjusted R-squared
summary(bm1)$adj.r.squared
summary(bm2)$adj.r.squared
summary(bm3)$adj.r.squared
summary(bm4)$adj.r.squared
summary(bm5)$adj.r.squared
summary(bm6)$adj.r.squared
summary(bm7)$adj.r.squared
summary(bm8)$adj.r.squared

## Calculate AIC
extractAIC(bm1, k=2)
extractAIC(bm2, k=2)
extractAIC(bm3, k=2)
extractAIC(bm4, k=2)
extractAIC(bm5, k=2)
extractAIC(bm6, k=2)
extractAIC(bm7, k=2)
extractAIC(bm8, k=2)

## Calculate Corrected AIC
n1 <- length(bm1$residuals)
n2 <- length(bm2$residuals)
n3 <- length(bm3$residuals)
n4 <- length(bm4$residuals)
n5 <- length(bm5$residuals)
n6 <- length(bm6$residuals)
n7 <- length(bm7$residuals)
n8 <- length(bm8$residuals)

k1 <- length(bm1$coefficients)
k2 <- length(bm2$coefficients)
k3 <- length(bm3$coefficients)
k4 <- length(bm4$coefficients)
k5 <- length(bm5$coefficients)
k6 <- length(bm6$coefficients)
k7 <- length(bm7$coefficients)
k8 <- length(bm8$coefficients)

extractAIC(bm1, k=2) + (2*k1*(k1+1))/(n1-k1-1)
extractAIC(bm2, k=2)+ (2*k2*(k2+1))/(n2-k2-1)
extractAIC(bm3, k=2)+ (2*k3*(k3+1))/(n3-k3-1)
extractAIC(bm4, k=2)+ (2*k4*(k4+1))/(n4-k4-1)
extractAIC(bm5, k=2)+ (2*k5*(k5+1))/(n5-k5-1)
extractAIC(bm6, k=2)+ (2*k6*(k6+1))/(n6-k6-1)
extractAIC(bm7, k=2)+ (2*k7*(k7+1))/(n7-k7-1)
extractAIC(bm8, k=2)+ (2*k8*(k8+1))/(n8-k8-1)

## Calculate BIC
extractAIC(bm1, k=log(n1))
extractAIC(bm2, k=log(n2))
extractAIC(bm3, k=log(n3))
extractAIC(bm4, k=log(n4))
extractAIC(bm5, k=log(n5))
extractAIC(bm6, k=log(n6))
extractAIC(bm7, k=log(n7))
extractAIC(bm8, k=log(n8))

###2/ Best subset model
m1 <- lm(y~x3+x4+x6+x9+x10+x14+x19+x20)
summary(m1)
par(mfrow=c(2,2))
plot(m1)

###3/ Multicollinearity 
install.packages(car)
library(car)
vif(m)
mn <- lm(y~x1+factor(x2)+x3+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17+x18+x19+x20)
vif(mn)
vif(m1)
vif(m1n)


###4/ Model 1
m1n <- lm(y~x3+x6+x9+x10+x14+x19+x20)
summary(m1n)

##Anova Test 
anova(m1n,m1)

##Diagnostic plots 
par(mfrow=c(2,2))
plot(m1n) 

#MMP
library(alr3)
par(mfrow=c(2,4))
mmp(m1n,m1n$fitted.values, xlab="Fitted Values")
mmp(m1n,x3)
mmp(m1n,x6)
mmp(m1n,x9)
mmp(m1n,x10)
mmp(m1n,x14)
mmp(m1n,x19)
mmp(m1n,x20)

#Leverage Point
l1 <- hatvalues(m1n)
cutoff1 <- 2*(length(m1n$coefficients)/length(m1n$residuals))
which(l1 > cutoff1)
a <- which(l1 > cutoff1)
length(a)

df <- cbind(train, l1)
a1 <- df[df$l1 > cutoff1,]


#Residual vs. Predictor Plots
StanRes1 <- rstandard(m1n)
par(mfrow=c(2,4))
plot(m1n$fitted.values,StanRes1, ylab="Standardized Residuals", xlab="Fitted Values")
plot(x3,StanRes1, ylab="Standardized Residuals")
plot(x6,StanRes1, ylab="Standardized Residuals")
plot(x9,StanRes1, ylab="Standardized Residuals")
plot(x10,StanRes1, ylab="Standardized Residuals")
plot(x14,StanRes1, ylab="Standardized Residuals")
plot(x19,StanRes1, ylab="Standardized Residuals")
plot(x20,StanRes1, ylab="Standardized Residuals")

#Added-Variable Plot 
par(mfrow=c(2,4))
avPlot(m1,variable=x3,ask=FALSE, main="")
avPlot(m1,variable=x6,ask=FALSE, main="")
avPlot(m1,variable=x9,ask=FALSE, main="")
avPlot(m1,variable=x10,ask=FALSE, main="")
avPlot(m1,variable=x14,ask=FALSE, main="")
avPlot(m1,variable=x19,ask=FALSE, main="")
avPlot(m1,variable=x20,ask=FALSE, main="")



#### MODEL 2 ########################################################################
###1/ Best subset
library(leaps)
X <- cbind(x1, x2, x3, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20)
BS <- regsubsets(as.matrix(X),y)
summary(BS)

##Best subset models
bm1 <- lm(y~x20)
bm2 <- lm(y~x14+x20)
bm3 <- lm(y~x3+x14+x20)
bm4 <- lm(y~x3+x14+x19+x20)
bm5 <- lm(y~x3+x9+x14+x19+x20)
bm6 <- lm(y~x1+x3+x9+x14+x19+x20)
bm7 <- lm(y~x1+x3+x9+x14+x15+x19+x20)
bm8 <- lm(y~x1+x3+x5+x6+x9+x14+x19+x20)


## Calculate adjusted R-squared
summary(bm1)$adj.r.squared
summary(bm2)$adj.r.squared
summary(bm3)$adj.r.squared
summary(bm4)$adj.r.squared
summary(bm5)$adj.r.squared
summary(bm6)$adj.r.squared
summary(bm7)$adj.r.squared
summary(bm8)$adj.r.squared

## Calculate AIC
extractAIC(bm1, k=2)
extractAIC(bm2, k=2)
extractAIC(bm3, k=2)
extractAIC(bm4, k=2)
extractAIC(bm5, k=2)
extractAIC(bm6, k=2)
extractAIC(bm7, k=2)
extractAIC(bm8, k=2)

## Calculate Corrected AIC
n1 <- length(bm1$residuals)
n2 <- length(bm2$residuals)
n3 <- length(bm3$residuals)
n4 <- length(bm4$residuals)
n5 <- length(bm5$residuals)
n6 <- length(bm6$residuals)
n7 <- length(bm7$residuals)
n8 <- length(bm8$residuals)

k1 <- length(bm1$coefficients)
k2 <- length(bm2$coefficients)
k3 <- length(bm3$coefficients)
k4 <- length(bm4$coefficients)
k5 <- length(bm5$coefficients)
k6 <- length(bm6$coefficients)
k7 <- length(bm7$coefficients)
k8 <- length(bm8$coefficients)

extractAIC(bm1, k=2) + (2*k1*(k1+1))/(n1-k1-1)
extractAIC(bm2, k=2)+ (2*k2*(k2+1))/(n2-k2-1)
extractAIC(bm3, k=2)+ (2*k3*(k3+1))/(n3-k3-1)
extractAIC(bm4, k=2)+ (2*k4*(k4+1))/(n4-k4-1)
extractAIC(bm5, k=2)+ (2*k5*(k5+1))/(n5-k5-1)
extractAIC(bm6, k=2)+ (2*k6*(k6+1))/(n6-k6-1)
extractAIC(bm7, k=2)+ (2*k7*(k7+1))/(n7-k7-1)
extractAIC(bm8, k=2)+ (2*k8*(k8+1))/(n8-k8-1)

## Calculate BIC
extractAIC(bm1, k=log(n1))
extractAIC(bm2, k=log(n2))
extractAIC(bm3, k=log(n3))
extractAIC(bm4, k=log(n4))
extractAIC(bm5, k=log(n5))
extractAIC(bm6, k=log(n6))
extractAIC(bm7, k=log(n7))
extractAIC(bm8, k=log(n8))

###2/ Model 2
m2 <- lm(y~x1+x3+x5+x6+x9+x14+x19+x20)
summary(m2)

##Diagnostic plots 
par(mfrow=c(2,2))
plot(m2) 

#MMP
library(alr3)
par(mfrow=c(3,3))
mmp(m2,m2$fitted.values, xlab="Fitted Values")
mmp(m2,x1)
mmp(m2,x3)
mmp(m2,x5)
mmp(m2,x6)
mmp(m2,x9)
mmp(m2,x14)
mmp(m2,x19)
mmp(m2,x20)

#Leverage Point
l1 <- hatvalues(m2)
cutoff1 <- 2*(length(m2$coefficients)/length(m2$residuals))
which(l1 > cutoff1)

#Residual vs. Predictor Plots
StanRes2 <- rstandard(m2)
par(mfrow=c(3,3))
plot(m2$fitted.values,StanRes2, ylab="Standardized Residuals", xlab="Fitted Values")
plot(x1,StanRes2, ylab="Standardized Residuals")
plot(x3,StanRes2, ylab="Standardized Residuals")
plot(x5,StanRes2, ylab="Standardized Residuals")
plot(x6,StanRes2, ylab="Standardized Residuals")
plot(x9,StanRes2, ylab="Standardized Residuals")
plot(x14,StanRes2, ylab="Standardized Residuals")
plot(x19,StanRes2, ylab="Standardized Residuals")
plot(x20,StanRes2, ylab="Standardized Residuals")

#Added-Variable Plot 
par(mfrow=c(2,4))
avPlot(m2,variable=x1,ask=FALSE, main="")
avPlot(m2,variable=x3,ask=FALSE, main="")
avPlot(m2,variable=x5,ask=FALSE, main="")
avPlot(m2,variable=x6,ask=FALSE, main="")
avPlot(m2,variable=x9,ask=FALSE, main="")
avPlot(m2,variable=x14,ask=FALSE, main="")
avPlot(m2,variable=x19,ask=FALSE, main="")
avPlot(m2,variable=x20,ask=FALSE, main="")


#### MODEL 3 ########################################################################
###1/ Convert to categorical variables
x4n <- categorical.infant.deaths 
x6n <- categorical.percentage.expenditure 
x8n <- categorical.Measles
x10n <- categorical.under.five.deaths


###2/ Box-cox transformation
install.pakages(alr3)
library(alr3)
summary(powerTransform(cbind(x1,x3,x5,x7,x9,x11,x12,x13,x14,x15,x16,x17,x18,x20)~1, data=train))

X3 <- sqrt(x3)
X5 <- sqrt(x5)
X7 <- x7^3
X11 <- x11^4 
X13 <- x13^4
X14 <- 1/sqrt(x14)
X15 <- log(x15)
X16 <- log(x16)
X17 <- log(x17)
X18 <- log(x18)

###3/ Best subset
library(leaps)
X <- cbind(x1, x2, X3, x4n, X5, x6n, X7, x8n, x9, x10n, X11, x12, X13, X14, X15, X16, X17, X18, x19, x20)
b <- regsubsets(as.matrix(X),y)
summary(b)

##Best subset models
bm1 <- lm(y~X14)
bm2 <- lm(y~X14+x19)
bm3 <- lm(y~X3+X14+x19)
bm4 <- lm(y~X3+X14+x19+x20)
bm5 <- lm(y~X3+X14+X18+x19+x20)
bm6 <- lm(y~X3+X13+X14+X18+x19+x20)
bm7 <- lm(y~X3+X13+X14+X15+X18+x19+x20)
bm8 <- lm(y~X3+factor(x8n)+X13+X14+X15+X18+x19+x20)


## Calculate adjusted R-squared
summary(bm1)$adj.r.squared
summary(bm2)$adj.r.squared
summary(bm3)$adj.r.squared
summary(bm4)$adj.r.squared
summary(bm5)$adj.r.squared
summary(bm6)$adj.r.squared
summary(bm7)$adj.r.squared
summary(bm8)$adj.r.squared

## Calculate AIC
extractAIC(bm1, k=2)
extractAIC(bm2, k=2)
extractAIC(bm3, k=2)
extractAIC(bm4, k=2)
extractAIC(bm5, k=2)
extractAIC(bm6, k=2)
extractAIC(bm7, k=2)
extractAIC(bm8, k=2)

## Calculate Corrected AIC
n1 <- length(bm1$residuals)
n2 <- length(bm2$residuals)
n3 <- length(bm3$residuals)
n4 <- length(bm4$residuals)
n5 <- length(bm5$residuals)
n6 <- length(bm6$residuals)
n7 <- length(bm7$residuals)
n8 <- length(bm8$residuals)

k1 <- length(bm1$coefficients)
k2 <- length(bm2$coefficients)
k3 <- length(bm3$coefficients)
k4 <- length(bm4$coefficients)
k5 <- length(bm5$coefficients)
k6 <- length(bm6$coefficients)
k7 <- length(bm7$coefficients)
k8 <- length(bm8$coefficients)

extractAIC(bm1, k=2) + (2*k1*(k1+1))/(n1-k1-1)
extractAIC(bm2, k=2)+ (2*k2*(k2+1))/(n2-k2-1)
extractAIC(bm3, k=2)+ (2*k3*(k3+1))/(n3-k3-1)
extractAIC(bm4, k=2)+ (2*k4*(k4+1))/(n4-k4-1)
extractAIC(bm5, k=2)+ (2*k5*(k5+1))/(n5-k5-1)
extractAIC(bm6, k=2)+ (2*k6*(k6+1))/(n6-k6-1)
extractAIC(bm7, k=2)+ (2*k7*(k7+1))/(n7-k7-1)
extractAIC(bm8, k=2)+ (2*k8*(k8+1))/(n8-k8-1)

## Calculate BIC
extractAIC(bm1, k=log(n1))
extractAIC(bm2, k=log(n2))
extractAIC(bm3, k=log(n3))
extractAIC(bm4, k=log(n4))
extractAIC(bm5, k=log(n5))
extractAIC(bm6, k=log(n6))
extractAIC(bm7, k=log(n7))
extractAIC(bm8, k=log(n8))

###4/ Model 3
m3 <- lm(y~X3+factor(x8n)+X13+X14+X15+X18+x19+x20)
summary(m3)
##Diagnostic plots 
par(mfrow=c(2,2))
plot(m3) 

#Residual plots
StanRes3 <- rstandard(m3)
par(mfrow=c(3,3))
plot(m3$fitted.values,StanRes3, ylab="Standardized Residuals", xlab="Fitted Values", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X3,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(x8n,StanRes3, ylab="Standardized Residuals", xlab="x8n", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X13,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X14,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X15,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X18,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(x19,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(x20,StanRes3, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")


#### MODEL 4 ########################################################################
###1/ Transform x6, x8
X6 <- x6^(0.01)
X8 <- x8^(0.01)

###2/ Best subset
X <- cbind(x1, x2, X3, X5, X6, X7, X8, x9, x10, X11, x12, X13, X14, X15, X16, X17, X18, x19, x20)
head(X)
b <- regsubsets(as.matrix(X),y)
summary(b)

##Best subset models
bm1 <- lm(y~X14)
bm2 <- lm(y~X14+x19)
bm3 <- lm(y~X3+X14+x19)
bm4 <- lm(y~X3+X14+x19+x20)
bm5 <- lm(y~X3+X14+X18+x19+x20)
bm6 <- lm(y~X3+X6+X14+X18+x19+x20)
bm7 <- lm(y~X3+X6+X13+X14+X18+x19+x20)
bm8 <- lm(y~X3+X6+X8+X13+X14+X18+x19+x20)


## Calculate adjusted R-squared
summary(bm1)$adj.r.squared
summary(bm2)$adj.r.squared
summary(bm3)$adj.r.squared
summary(bm4)$adj.r.squared
summary(bm5)$adj.r.squared
summary(bm6)$adj.r.squared
summary(bm7)$adj.r.squared
summary(bm8)$adj.r.squared

## Calculate AIC
extractAIC(bm1, k=2)
extractAIC(bm2, k=2)
extractAIC(bm3, k=2)
extractAIC(bm4, k=2)
extractAIC(bm5, k=2)
extractAIC(bm6, k=2)
extractAIC(bm7, k=2)
extractAIC(bm8, k=2)

## Calculate Corrected AIC
n1 <- length(bm1$residuals)
n2 <- length(bm2$residuals)
n3 <- length(bm3$residuals)
n4 <- length(bm4$residuals)
n5 <- length(bm5$residuals)
n6 <- length(bm6$residuals)
n7 <- length(bm7$residuals)
n8 <- length(bm8$residuals)

k1 <- length(bm1$coefficients)
k2 <- length(bm2$coefficients)
k3 <- length(bm3$coefficients)
k4 <- length(bm4$coefficients)
k5 <- length(bm5$coefficients)
k6 <- length(bm6$coefficients)
k7 <- length(bm7$coefficients)
k8 <- length(bm8$coefficients)

extractAIC(bm1, k=2) + (2*k1*(k1+1))/(n1-k1-1)
extractAIC(bm2, k=2)+ (2*k2*(k2+1))/(n2-k2-1)
extractAIC(bm3, k=2)+ (2*k3*(k3+1))/(n3-k3-1)
extractAIC(bm4, k=2)+ (2*k4*(k4+1))/(n4-k4-1)
extractAIC(bm5, k=2)+ (2*k5*(k5+1))/(n5-k5-1)
extractAIC(bm6, k=2)+ (2*k6*(k6+1))/(n6-k6-1)
extractAIC(bm7, k=2)+ (2*k7*(k7+1))/(n7-k7-1)
extractAIC(bm8, k=2)+ (2*k8*(k8+1))/(n8-k8-1)

## Calculate BIC
extractAIC(bm1, k=log(n1))
extractAIC(bm2, k=log(n2))
extractAIC(bm3, k=log(n3))
extractAIC(bm4, k=log(n4))
extractAIC(bm5, k=log(n5))
extractAIC(bm6, k=log(n6))
extractAIC(bm7, k=log(n7))
extractAIC(bm8, k=log(n8))

###4/ Model 4
m4 <- lm(y~X3+X6+X8+X13+X14+X18+x19+x20)
summary(m4)
##Diagnostic plots 
par(mfrow=c(2,2))
plot(m4) 

#Residual plots
StanRes4 <- rstandard(m4)
par(mfrow=c(3,3))
plot(m4$fitted.values,StanRes3, ylab="Standardized Residuals", xlab="Fitted Values", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X3,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X6,StanRes4, ylab="Standardized Residuals", xlab="x6", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X8,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X13,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X14,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(X18,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(x19,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")
plot(x20,StanRes4, ylab="Standardized Residuals", ylim = c(-5,5))
abline(h=4,lty=2, col="red")
abline(h=-4,lty=2, col="red")


#### MODEL COMPARISON ########################################################################
###1/ Calculate AIC, AICc, BIC of 4 models
# Model 1
extractAIC(m1n, k=2)
n <- length(m1n$residuals)
k <- length(m1n$coefficients)
extractAIC(m1n, k=2) + (2*k*(k+1))/(n-k-1)
extractAIC(m1n, k=log(n))

# Model 2
extractAIC(m2, k=2)
n <- length(m2$residuals)
k <- length(m2$coefficients)
extractAIC(m2, k=2) + (2*k*(k+1))/(n-k-1)
extractAIC(m2, k=log(n))

# Model 3
extractAIC(m3, k=2)
n <- length(m3$residuals)
k <- length(m3$coefficients)
extractAIC(m3, k=2) + (2*k*(k+1))/(n-k-1)
extractAIC(m3, k=log(n))

# Model 4
extractAIC(m4, k=2)
n <- length(m4$residuals)
k <- length(m4$coefficients)
extractAIC(m4, k=2) + (2*k*(k+1))/(n-k-1)
extractAIC(m4, k=log(n))

###2/ Predictions on test data
# Generate variables on test data
colnames(test)
y=test$Life.expectancy
x1=test$Year
x2=test$Status
x3=test$Adult.Mortality
x4=test$infant.deaths
x5=test$Alcohol
x6=test$percentage.expenditure
x7=test$Hepatitis.B
x8=test$Measles
x9=test$BMI
x10=test$under.five.deaths
x11=test$Polio
x12=test$Total.expenditure
x13=test$Diphtheria
x14=test$HIV.AIDS
x15=test$GDP
x16=test$Population
x17=test$thinness..1.19.years
x18=test$thinness.5.9.years
x19=test$Income.composition.of.resources
x20=test$Schooling
x8n=test$categorical.Measles
x4n <- test$categorical.infant.deaths 
x6n <- test$categorical.percentage.expenditure
x10n <- test$categorical.under.five.deaths 
X3=sqrt(x3)
X5=sqrt(x5)
X6=(x6)^0.01
X7=(x7)^3
X8=(x8)^0.01
X10=(x10)^0.25
X11=(x11)^4
X13=(x13)^4
X14=1/sqrt(x14)
X15=log(x15)
X16=log(x16)
X17=log(x17)
X18=log(x18)

# Predictions
yhat1=predict(m1n,newdata=data.frame(cbind(x3,x6,x9,x10,x14,x19,x20)))
yhat2=predict(m2,newdata=data.frame(cbind(x1,x3,x5,x6,x9,x14,x19,x20)))
yhat3=predict(m3,newdata=data.frame(cbind(X3,factor(x8n),X13, X14,X15,X18,x19,x20)))
yhat4=predict(m4,newdata=data.frame(cbind(X3,X6,X8,X13,X14,X18,x19,x20)))

###3/ Calculate MAPE
print("MAPE of Model 1")
mean((abs(y-yhat1))/y)*100
print("MAPE of Model 2")
mean((abs(y-yhat2))/y)*100
print("MAPE of Model 3")
mean((abs(y-yhat3))/y)*100
print("MAPE of Model 4")
mean((abs(y-yhat4))/y)*100

detach(train)
