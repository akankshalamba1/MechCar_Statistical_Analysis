# MechCar_Statistical_Analysis
R-studio and statistics analysis

## Analysis Overview

This analysis is based on an auto company AutosRUs’ newest prototype, the MechaCar, which is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team. 
For this analysis we will help the data team to:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar   prototypes.

2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG

The MechaCar dataset contains a sample of 50 prototypes measuring the miles per gallon across multiple variables. The linear regression was calculated with the help of R and R-studio.

### Linear regression model

Following formula is used for the Linear regression model of MechaCar_mpg csv file:
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar_mpg)

By using the linear regression model we get the following coefficient:

![linear_reg](https://user-images.githubusercontent.com/111251560/207669984-908a3dff-8968-48e2-b6cc-93e728b147f6.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- Is the slope of the linear model considered to be zero? Why or why not?

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


### Summary of Linear Regression model
In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. The summary of multiple regression model provides alot of insights about the dataset such as the Min, first Quatile, Median, third Quatile and Max for this analysis te min and max value are (-19.4701) and (18.5849) respectively and teh median is -0.0692. 

Following formula is used for the Summary of Linear regression model of MechaCar_mpg csv file:
> summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar_mpg))

Output of the summary of linear regression model

![linear_reg_summary](https://user-images.githubusercontent.com/111251560/207671331-4b8cd3b5-afa6-4aa0-82b7-24f6004fa2a1.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- Is the slope of the linear model considered to be zero? Why or why not?

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
