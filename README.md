# MechaCar_Statistical_Analysis
## Overview of the Project
AutoRUs' has a new prototype, the MechCar, but it suffers from production troubles which are in turn hindering the progress of the manufacturing team. The purpose of the project is to review the production data for insights that may aid the manufacturing team at AutosRUs'.

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
T-tests were run in order to determine if the manufacturing lots are statistically different from the mean population.

A t-test was run on all the manufacturing lots:

![t-test for all](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_all.png)

This was followed by 3 t-tests run on a different manufacturing lot each time:

![t-test for lot 1](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot1.png)
![t-test for lot 2](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot2.png)
![t-test for lot 3](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot3.png)

## A Study Design to COmpare the MechaCar to the Competition
A statistical study was designed to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.




