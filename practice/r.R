
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

demo_table <- read.csv(file='C:/Users/akank/Desktop/Github/demo.csv',check.names=F,stringsAsFactors = F)
library(jsonlite)

demo_table2 <- fromJSON(txt='C:/Users/akank/Desktop/Github/demo.json')
demo_table[3,3]

demo_table[3,"Year"]

demo_table$"Vehicle_Class"

filter_table <- demo_table2[demo_table2$price > 10000,]



sample(c("cow","deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
demo_table[sample(1:nrow(demo_table), 3),]

library(tidyverse)

demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) 
#add columns to original data frame

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') 
#create summary table

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicle=n(), .groups = 'keep')
#create summary table with mupltiple table with mupliple columns

demo_table3 <- read.csv('C:/Users/akank/Desktop/Github/demo2.csv',check.names = F,stringsAsFactors = F)
#Created demo_table3 table

long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

# or use following format
long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)

wide_table <- long_table %>% spread(key="Metric",value="Score")
#creat wide table

all.equal(demo_table3,wide_table)


table <-demo_table3[,order(colnames(wide_table))]
                    #or to sort the table
table <- demo_table3[,(colnames(wide_table))]

t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven)))

sample_table <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) #generate another 50 randomly sampled data points

t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) #compare means of two samples
