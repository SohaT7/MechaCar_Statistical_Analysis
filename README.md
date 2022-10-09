# MechaCar_Statistical_Analysis
## Table of Contents
- [Overview of the Analysis](#overview-of-the-analysis)
    - [Purpose](#purpose)
    - [About the Dataset](#about-the-dataset)
    - [Tools Used](#tools-used)
    - [Description](#description)
- [Results](#results)
    - [Linear Regression to Predict MPG](#Linear-Regression-to-Predict-MPG)
    - [Data Visualization for the Trip Analysis](#Data-Visualization-for-the-Trip-Analysis)
    - [T-Tests on Suspension Coils](#T-Tests-on-Suspension-Coils)
    - [Study Design - MechaCar vs Competition](#Study-Design---MechaCar-vs-Competition)
- [Summary](#summary)
- [Contact Information](#contact-information)

## Overview of the Analysis
### Purpose:
This analysis aims to analyze the vehicle data from an automotive company in order to aid it in identifying the production troubles that are hindering the manufacture of the company's newest prototype car, the MechaCar.

### About the Dataset:
The datasets used in this analysis are the following two csv files:
 - [MechaCar MPG dataset](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
 - [Suspension Coil dataset](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)

### Tools Used:
 - R programming language

### Description:
The data was extracted, transformed, and loaded in (ETL), followed by the following data analysis:
 - Multiple linear regression to determine which variables predict the miles per gallon (mpg) of the prototype car
 - Data visualization through generating summary statistics on the pounds per square inch (PSI) of the suspension coils from the different manufacturing lots
 - T-tests to determine if the manufacturing lots are statistically different from the mean population
 - A statistical study to compare the protype car's performance against that of cars made by other manufacturers

## Results
### Linear Regression to Predict MPG
A multiple linear regression analysis was run in order to identify which variables in the dataset predict the miles per gallon (mpg) of the car's prototypes.

The following shows the results obtained on running the multiple linear regression model:

![Linear Regression](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lm.png)

The following shows the summary statistics for the model:

![LM_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lm_summary.png)

The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are vehicle_weight, spoiler_angle, and All-Wheel Drive (AWD). The varaibles/coefficients vehicle_length and ground_clearance provide a random amount of variance to the mpg values in the dataset.

The slope of the linear model cannot be considered to be zero for the p-value is much less than the p-value (p-value = 5.35e-11). Looked at another way, some independent variables (vehicle_weight, spoiler_angle, AWD) had an effect on the dependent variable (mpg), and therefore the slope is not zero.

This linear model predicts the mpg of MechaCar prototypes effectively: it has an R-squared value of 71.49%, which signifies a 71.49% level of accuratly predicting the mpg values.

### Data Visualization for the Trip Analysis
Summary statistics were drawn up on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. 

The total summary and lot summary is shown below, respectively:

![total_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)

![lot_summary](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

According to the design specifications for the MechaCar suspension coils, the variance of the suspension coils should not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total (variance = 62.29), as well as for lots 1 and 2 (variance for lot 1 = 0.98; variance for lot 2 = 7.47). The data for lot 3, however, does not meet this design specification since its variance exceeds 100, at 170.29.

### T-Tests on Suspension Coils
T-tests were run in order to determine if the manufacturing lots are statistically different from the mean population (mean PSI (pounds per square inch) of the population is 1500). A confidence interval/significance level of 95% (i.e. 95% of the time the test results would be true) was used for these tests.

The null and alternative hypotheses are listed below:
 - Null Hypothesis: No statistically significant difference between the two (true mean is equal to population mean)
 - Alternative Hypothesis: Statistically significant difference between the two (true mean is not equal to population mean)

A t-test was run on all the manufacturing lots:

![t-test for all](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_all.png)

This was followed by 3 t-tests run on a different manufacturing lot each time:

![t-test for lot 1](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot1.png)
![t-test for lot 2](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot2.png)
![t-test for lot 3](https://github.com/SohaT7/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot3.png)

For all lots, lot 1 and lot 2, we fail to reject the null hypothesis since p-values from their t-tests are greater than 0.05 (0.06, 1, and 0.61 respectively). We reject the null hypothesis for lot 3 since the p-value from its t-test is greater than 0.05 (at 0.04).

### Study Design - MechaCar vs Competition
If a statistical study were to be designed to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers (in the last 3 years), the metrics we would keep in our test are:
safety features rating, malfunctions/recalls, type of engine (electric, gasoline, etc), current price, mpg (miles per gallon), and average cost of ownership.

The null hypotheis would be that MechaCar prototype is fairly priced given its performance based on all key factors. The alternative hypothesis would be that it is unfairly priced based on its performance of key factors. 

The statistical test we would use to test the hypothesis will be a multiple linear regression model, which can help us determine which factors (i.e. which independent variables and their combination in our collected dataset) have the highest (and significant) correlation with the listed selling price for the car. 

## Summary
To summarize the results, the independant variables that have an effect on the dependant variable miles per gallon (mpg) are vehicle_weight, spoiler_angle, and All-Wheel Drive (AWD). The design specifications that the variance of the suspension coils not exceed 100 pounds per square inch (PSI) are met by all lots, lot 1 individually, and lot 2 individually; lot 3 does not meet these design specifications. 

The manufacturing lots which are statistically different from the mean population are lot 3 only. The t-tests run on lot 1, lot 2, and all lots yields results signifying that these lots are not statistically different from the mean population. Lot 3 is statistically different from the mean population, while lot 1, lot 2, and all lots do not have a statistically significant difference when compared to the mean population.

A future statistical study can compare the performance (based on key factors) of the prototype car with cars manufactured by other companies. This can be done by determining if the prototype is fairly priced based on its performance (measured by key factors). A multiple linear regression will help identify which independent variables (key factors) have the highest correlation with the dependant variable (the listed selling price).
 
## Contact Information
Email: st.sohatariq@gmail.com



