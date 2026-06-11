install.packages("tidyverse")
library(tidyverse)

read.csv(hw1_data.csv)
datafile <- read.csv("hw1_data.csv")
head(datafile, n=2)
tail(datafile, n=2)
count_na("Ozone")
summarise_all(datafile)

mean(datafile$Ozone, na.rm = TRUE)
subset_data <- datafile[datafile$Ozone > 31 & datafile$Temp >90,]
mean(subset_data, na.rm = TRUE)

monthdata <- datafile[datafile$Month == 5, ]
mean(monthdata$Temp)
max(monthdata$Ozone)

## Installing Swirl package 
install.packages('swirl')
library(swirl)

## Install R programming course
install_from_swirl("R Programming")

## Starting with swirl
swirl()

#Weekly Quiz 

library(datasets)
data(iris)

?iris
head(iris)
apply(iris[, 1:4], 2, mean)

data(mtcars)

?mtcars

with(mtcars,tapply(mpg,cyl,mean))

set.seed(1)
rpois(5,2)

set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e

library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
