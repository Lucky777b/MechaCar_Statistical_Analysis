# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 

Below is what the MechaCar dataframe looks like when reading the csv file into RStudio. This dataframe contains data on MechaCar prototypes produced using multiple design specifications to try to determine ideal vehicle performance by analyzing multiple car metrics. These metrics include: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 

![Mecha Dataframe](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/MechaCar_mpg_df.png)

Using the MechaCar dataframe, I used the lm() function in RStudio to perform linear regression. 

![lm function](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/MechaCar_linear_regression_model_multiple.png)

Finally, I was able to use the summary() function in RStudio, to determine the p-value and r-squared value for the linear regression model, as shown below. 

![summary stats](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/MechaCar_summary_statistics.png)

The multiple R-squared value was equal to 0.7149, and the adjusted R-squared value was equal to 0.6825. The p-value for this dataset was equal to 5.35e-11, which is a very small number. 

According to this lm() linear regression model analysis, vehicle_length, ground_clearance, and the intercept provide a non-random amount of variance to the linear model of mpg, because the variance of a non-random variable is usually 0. 

As stated previously, the p-value resulted as an extremely small number, which is far below the significance level of 0.05. Thus, we were able to reject the null hypothesis, which stated that the slope is equal to 0. If we reject the null hypothesis, then that means that the alternative hypothesis is true, which states that the slope is not equal to 0. 

R-squared(r^2) values are calculated in linear regression functions, because they act as a quantifier to determine whether a linear model would be a good predictor if used for future observations using similar or other real-world datasets. This r-squared(r^2) value is known as the coefficient of determination. The multiple r-squared value is 0.71, which is close to the adjusted r-squared value, which means that the linear model is a good predictor of MechaCar prototypes mpg. 


## Summary Statistics on Suspension Coils

The purpose of this analysis was to see if the MechaCar suspension coils meet the design specifications set by the manufacturer. The design specifications state that the variance of the suspension coils must not exceed 100 pounds per square inch. 

I wrote an Rscript using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column. An example is shown below of the results of the function: 

![summary coils](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/suspCoil_total_summary.png)

I wrote an Rscript to create a lot_summary dataframe using the group_by() and the summarize() function to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column. An example of the results is shown below: 

![lot_summary](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/suspCoil_lot_summary.png)

When looking at the total summary results for the entire dataset of the suspension coil's PSI column, the variance is equal to 62.29356, which is under the design specifications set by the manufacturer to not exceed the 100 pounds per square inch. Although, when looking at the lot_summary dataframe, which separates the lots into 3 different lots, with 3 different variance values, Lot 3 variance is over the amount set by the design specifications because that variance is equal to 170.2861224. This could be due to the fact that the lots are chosen at random, but it could also just indicate that the suspension coils for Lot 3 do not meet the necessary suspension coil specification requirements. 

The reason that it could meet specifications when summarizing the dataset as a whole versus individually, is because the variance numbers in lot 2 has such a low variance, that it brings the overall variance total down for all 3 lots when calculated as a whole. Although, when finding the variance individually, it becomes apparent that Lot 3 does not meet those specifications, which could be a reason why performing these calculations separately is important because that difference is not readily apparent when viewing the same statistics for the whole dataset. 

## T-Test on Suspension Coils 

### T-Test on Entire Lot 

By writing an RScript using a t-test to compare all manufacturing lots against the mean PSI of the population, it can be concluded that we fail to reject the null hypothesis. We fail to reject the null hypothesis because the p-value is equal to 0.06, which is higher than the significance level of 0.05. This essentially means that the sample mean may be equivalent to the true population mean, and also means that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch. 

![all lots](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/t_test_all_lots.png)

### T-Test on Lot 1, Lot 2, and Lot 3

I also wrote three more RScripts using the t.test function and a subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. The results of Lot 1, Lot 2, and Lot 3 are shown below in order of lot number. 

![lot1](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/t_test_Lot1.png)

For Lot 1, the p-value is equal to 1, which is much higher than the significance level of 0.05. Therefore, we fail to reject the null hypothesis that Lot 1's manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. The t-value is also equal to 0, which means that the mean value is the same as the population mean. 

![lot2](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/t_test_Lot2.png)

For Lot 2, the p-value is equal to 0.6072, which is also higher than the significance level of 0.05, and again we fail to reject the null hypothesis that Lot 2's manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. The t-value is equal to 0.51745, which is not a very large number, and when the t-value is smaller, that is another indication that there is not a statistically significant difference.

![lot3](https://github.com/Lucky777b/MechaCar_Statistical_Analysis/blob/main/resources/t_test_Lot3.png)

For Lot 3, the p-value is equal to 0.04168, which is smaller than the significance level of 0.05. Due to this p-value result, we can reject the null hypothesis that Lot 3's manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. Even though, the p-value allows us to reject the null hypothesis, the t-value is still very small, which would normally indicate that the mean value is not statistically different from the population mean. It is possible that this test should be run again at a smaller significance level to see if the p-value will still produce a result to reject the null hypothesis if the significance level was 0.025 versus 0.05. 

### Study Design: MechaCar Gas Efficiency 

Another statistical study that could be beneficial for determining MechaCar's products versus other car companies, would be to look at gas efficiency on the highway and on city streets. Gas prices have risen heavily over the past 20 years, and there is no indication that gas prices will stop increasing in the coming years, which is why this would be an important statistic to look at for any consumer looking to purchase a new vehicle. This study would have to be done two times, one using city mpg, and a second study using highway mpg, or a two sample t-test might be able to be performed. 

The null hypothesis: There is no statistical difference between MechaCar prototype City and Highway mpg gas fuel efficiency compared to a competing car manufacturing company city and highway gas fuel efficiency
The alternative hypothesis: There is a statistical difference between MechaCar prototype City and Highway mpg gas fuel efficiency compared to a competing car manufacturing company city and highway gas fuel efficiency

The metrics that could be included in the analysis are as follows: 

* City mpg (1st study): dependent variable 
* Highway mpg (2nd study): dependent variable
* Vehicle weight: Independent variable 
* AWD: Independent variable 
* Horse power: Independent variable 
* MPG(overall - both city and highway mpg): Independent variable