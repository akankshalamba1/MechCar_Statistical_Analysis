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

To get 95% of confidence level, the p-value should be compared to alpha = .05 level of significance.

Coeffient:

![coefficienct](https://user-images.githubusercontent.com/111251560/207768099-763218a3-aa74-4511-b67d-a1248031fb0c.png)

vehicle length: 0 < .05 statistically significant, non random amount of variance
ground clearance: 0 > .05 statistically significant, non-random amount of variance

rest values are more than .05 so have less statistical significant and random amount of varianceas.

- Is the slope of the linear model considered to be zero? Why or why not?
After converting the output of linear regression model we can observe that the slope of the variables are non-zero even if they are close to zero.

Coefficients:
- vehicle length: 6.267
- vehicle weight: .001
- spoiler angle: .069
- ground clearance: 3.546
- AWD: -3.411

The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

R-squared is .7149, which is a strong correlation and shows the dataset has effective data However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.

## Summary of Statistics on Suspension Coils

Summary of the Suspension Coils of all the Lots is as follows:

![total_summary](https://user-images.githubusercontent.com/111251560/207770646-73f0fcab-48ae-4203-a351-3bc6623d7ccc.png)

Summary based on each lot using groupby is as follows:

![lot_summary](https://user-images.githubusercontent.com/111251560/207770910-a3d0fbf0-d464-4174-97e6-009120f476cb.png)

Lot 1 and Lot 2 are both within design specifications and have hnearly the same exact mean and median. Lot 3 shows the most variance and exceeds the manufacturers specs.

## T-Tests on Suspension Coils

Lot 1 and Lot 3 the PSI values are not different from the population mean. However lot 2 the p-value is .347 which means there is evidence that the suspension coil is different from the population mean. All t-tests can be seen below:

### T-test accross all the lots

![T-test_all_colision](https://user-images.githubusercontent.com/111251560/207771585-5582eb74-b37f-4ef1-b2e8-5f79a9416220.png)

Lot 1

![t-test_lot1](https://user-images.githubusercontent.com/111251560/207771624-edb0b591-b0a6-4c87-8bcd-6732e6213617.png)

Lot 2

![t-test_lot2](https://user-images.githubusercontent.com/111251560/207771669-e38c4472-8bde-48c9-a8c1-2bbe24964374.png)

Lot 3

![t-test_lot3](https://user-images.githubusercontent.com/111251560/207771690-4623dbdc-c56f-4b47-92d5-85b73f29ade3.png)


