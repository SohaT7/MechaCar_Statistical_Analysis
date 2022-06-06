# Linear Regression Model to Predict MPG

## Loading the dplyr package, using the library() function:
library(dplyr)

## Importing and reading in the MechaCar_mpg.csv file:
library(tidyverse)
mechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

## Performing linear regression:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_mpg)

## Determining the p-value and r-squared value for the linear regression model, using the summary() function:
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_mpg))



# Create Visualizations for the Trip Analysis

## Importing and reading in Suspension_Coil.csv file:
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

## Creating a total_summary dataframe to get the mean, median, variance, and standard deviation of the suspension coil's PSI column:
total_summary <- suspension_coil %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), var_PSI=var(PSI), std_dev_PSI=sd(PSI))

## Creating a lot_summary dataframe to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column:
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), var_PSI=var(PSI), std_dev_PSI=sd(PSI))



# T-Tests on Suspension Coils

## A t-test that compares all manufacturing lots against mean PSI of the population (1500 pounds per square inch):
t.test(suspension_coil$PSI, mu=1500)

## 3 t-tests that compare each manufacturing lot against mean PSI of the population (1500 pounds per square inch):
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
