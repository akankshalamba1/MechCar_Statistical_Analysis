ggplot(mtcars,aes(x=wt)) + geom_density() #visualize distribution using density plot

shapiro.test(mtcars$wt)

library(tidyverse)


population_table <- read.csv('C:/Users/akank/Desktop/Github/R Studio/used_car_data.csv',check.names = F,stringsAsFactors = F) #import used car dataset
plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points

t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples


############## Two-Sample t-Test
#import dataset
mpg_data <- read.csv('C:/Users/akank/Desktop/Github/R Studio/practice/mpg_modified.csv')

#select only data points where the year is 1999
mpg_1999 <- mpg_data %>% filter(year==1999)

#select only data points where the year is 2008
mpg_2008 <- mpg_data %>% filter(year==2008)

#Compare the mean difference between two samples
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T)

############### ANOVA Test

#"Is there any statistical difference in the horsepower of a vehicle based on its engine type?"
#In this case, we will use the "hp" and "cyl" columns from our mtcars dataset: 
  # horsepower (the "hp" column) will be our dependent, measured variable
  # number of cylinders (the "cyl" column) will be our independent, categorical variable.

#filter columns from mtcars dataset
mtcars_filt <- mtcars[,c("hp","cyl")]

#convert numeric column to factor
mtcars_filt$cyl <- factor(mtcars_filt$cyl)

#compare meaans across multiple levels
aov(hp ~ cyl,data=mtcars_filt)

#To retrieve p value we have to wrap out aov() function in a summary() function
summary(aov(hp ~ cyl,data=mtcars_filt))

#to check the data categories
head(mtcars)

################ Correlation Calculation and coefficient

#import dataset into ggplot2
plt <- ggplot(mtcars,aes(x=hp,y=qsec))

#create scatter plot
plt + geom_point()

#calculate correlation coefficient
cor(mtcars$hp,mtcars$qsec)

### r-value -0.7082234, means strong negitive correlation between jp and qsec
#### Another example

#read in dataset
used_cars_data <- read.csv('C:/Users/akank/Desktop/Github/R Studio/used_car_data.csv',stringsAsFactors = F)

head(used_cars_data)

#import dataset into ggplot2
plt<- ggplot(used_cars_data,aes(x=Miles_Driven,y=Selling_Price))

#create scatter plot
plt + geom_point()

#calculate correlation coefficient
cor(used_cars_data$Miles_Driven,used_cars_data$Selling_Price)

### r-value 0.02 means that there is a negligible correlation

############## Correlation matrix

#convert data frame into numeric matrix
used_matrix <- as.matrix(used_cars_data[,c("Selling_Price","Present_Price","Miles_Driven")])

cor(used_matrix)

############## Linear regression

#craete linear model
lm(qsec ~ hp,mtcars)

#sumarieze linear model
summary(lm(qsec ~ hp,mtcars))

#Create linear model
model <- lm(qsec ~ hp,mtcars)

#determine y-axis values form linear model
yvals <- model$cofficients['hp']*mtcars$hp + model$coefficients['(Intercept']

#import dataset into ggplot2
plt <- ggplot(mtcars,aes(x=hp,y=qsec))

#plot scatter and linear model
plt + geom_point() + geom_line(aes(y=yvals), color="red")

rlang::last_error()

################ Multiple linear regression

#generate multiple linear regression model
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)

#generate summary statistics
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars))


############ Chi-squared test

#To test its there a difference in frequency between our first and second groups?

#generate contingency table
tbl <- table(mpg$class,mpg$year)

#compare categorical distribution
chisq.test(tbl)
