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

![linear_reg](https://user-images.githubusercontent.com/111251560/207669984-908a3dff-8968-48e2-b6cc-93e728b147f6.png)
