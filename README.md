# MechaCar_Statistical_Analysis
## Overview of the Project
A car manufacturing company has a new prototype, the MechCar, but it suffers from production troubles which are in turn hindering the progress of the manufacturing team. The purpose of the project is to review the production data for insights that may aid the manufacturing team at this company.

### Tools used:
R

## Linear Regression to Predict MPG
A multiple linear regression analysis was run in order to identify which variables in the dataset predict the mpg of MechaCar prototypes.

The following shows the results obtained on running the multiple linear regression model:

![Linear Regression](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lm.png)

The following shows the summary statistics for the model:

![LM_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lm_summary.png)

The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are vehicle_weight, spoiler_angle, and AWD. The varaibles/coefficients vehicle_length and ground_clearance provide a random amount of variance to the mpg values in the dataset.

The slope of the linear model cannot be considered to be zero for the p-value is much less than the p-value (p-value = 5.35e-11). Looked at another way, some independent variables (vehicle_weight, spoiler_angle, AWD) had an effect on the dependent variable (mpg), and therefore the slope is not zero.

This linear model predicts the mpg of MechaCar prototypes effectively: it has an R-squared value of 71.49%, which signifies a 71.49% level of accuratly predicting the mpg values.

## Create Visualizations for the Trip Analysis
Summary statistics were drawn up on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. 

The total summary and lot summary is shown below, respectively:

![total_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)

![lot_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

According to the design specifications for the MechaCar suspension coils, the variance of the suspension coils should not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total (variance = 62.29), as well as for lots 1 and 2 (variance for lot 1 = 0.98; variance for lot 2 = 7.47). The data for lot 3, however, does not meet this design specification since its variance exceeds 100, at 170.29.

## T-Tests on Suspension Coils
T-tests were run in order to determine if the manufacturing lots are statistically different from the mean population. A confidence interval/significance level of 95% (i.e. 95% of the time the test results would be true) was used for these tests.

A t-test was run on all the manufacturing lots:

![t-test for all](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_all.png)

This was followed by 3 t-tests run on a different manufacturing lot each time:

![t-test for lot 1](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot1.png)
![t-test for lot 2](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot2.png)
![t-test for lot 3](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot3.png)

For all lots, lot 1 and lot 2, we fail to reject the null hypothesis since p-values from their t-tests are greater than 0.05 (0.06, 1, and 0.61 respectively). We reject the null hypothesis for lot 3 since the p-value from its t-test is greater than 0.05 (at 0.04).

## Study Design: MechaCar vs Competition
If a statistical study were to be designed to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers (in the last 3 years), the metrics we would keep in our test are:
safety features rating, malfunctions/recalls, type of engine (electric, gasoline, etc), current price, mpg (miles per gallon), and average cost of ownership.

The null hypotheis would be that MechaCar prototype is fairly priced given its performance based on all key factors. The alternative hypothesis would be that it is unfairly priced based on its performance of key factors. 

The statistical test we would use to test the hypothesis will be a multiple linear regression model, which can help us determine which factors (i.e. which independent variables and their combination in our collected dataset) have the highest (and significant) correlation with the listed selling price for the car. 

## Contact Information
Email: st.sohatariq@gmail.com




