# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
####
When reviewing the results of the multiple linear regression, two variables provided non-random amounts of variance to the mpg values. Of the variables listed in the below image, ground clearance and vehicle length (as well as the intercept) have a significant impact on the mpg values. Because of the two variables mentions, not every single variable is random. Without totally random variables, the slope cannot be zero. The r-squared value of 0.7149 further proves that the slope of the linear model is not zero as it is a positive number above 0. All of these factors previously discussed prove that the linear model does not predict the mpg of MechaCar prototypes effectively as the two variables that are non-random mean their is overfitting occuring. Either the formula must change or other factors must be considered in order to properly predict the mpg of MechaCar prototypes. 
####
![mechacar summary](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/mechacar%20summary.PNG)

## Summary Statistics on Suspension Coils
####
When reviewing the suspension coils' PSI data for all manufacturing lots, the variance is roughly 62 pounds per square inch. This means that overall, the manufacturing data meets the design specifications for the MechaCar suspension coils. However, the variance summary data is rather different when grouping the statistics by each lot. Manufacturing lots 1 and 2 have a variance of 1 and 7 pounds per square inch respectively. Manufacturing lot 3 has a variance of 170 for the PSI data. This third lot exceeds the suspension coil threshold significantly and will need to be addressed independently of the other lots in order to ensure the design specifications for the MechaCar suspension coils are followed.
####
![lot summary](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/lotsummary.PNG)

## T-Tests on Suspension Coils
####
The design specifications for the MechaCar suspension coils is 1500 PSI per vehicle. In order to test the entire dataset, a t-test was performed on the PSI column of the suspension coil dataframe to see if the mean of this sample followed the 1500 PSI requirement. This t-test had a mean of 1498.78 PSI, meaning that the true mean of the dataset is not 1500 PSI. The individual manufacturing lots were the next to be tested to see if any had a true mean of 1500. Of the three lots, Lot 1 had exactly 1500 PSI as the mean. Lot 2 had a mean of 1500.2 PSI and Lot 3 had a mean of 1496.14 PSI. Of these three lots, Lot 1 and 2 were the only that had a 95% confidence interval containing 1500 PSI. Despite all three lots not having a confidence interval containing 1500 PSI, the overall t-test did. With all of this information, the confidence interval margins are extremely small and depending on the design specifications, Lot 1 and Lot 2 have the best cars based on PSI data.
####
![lotttest](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/totalOneSamplettest.PNG) ![lot1test](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/lot1ttest.PNG)
####
![lot2test](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/lot2ttest.PNG) ![lot3test](https://github.com/victoriaguille/MechaCar_Statistical_Analysis/blob/main/images/lot3ttest.PNG)

## Study Design: MechaCar vs Competition
####
A statistical analysis between MechaCar and the competition could provide important feedback for future design specifications for the MechaCar vehicles. Keeping the interest of the consumer in mind, it would be best to compare fuel efficiency, horse power, and maintenance cost. Much like what has been done with comparing manufacturing lots' PSI metrics within the MechaCar data, the same could be done with a category such as fuel efficiency or maintenance cost. Looking at purely fuel efficiency data between MechaCar and the competition, the null hypothesis would be that either vehicle have the same fuel efficiency. The alternative hypothesis would be that one of the companies will have a vehicle that is not as efficient as the other. To test the hypothesis, a two-sample t-test would be performed on both sets of data for the fuel efficiency metrics. This particular test would be used to the test the hypothesis as the data type is continuous and two samples (MechaCar and the competition) are being compared. From there, the statistical test will give us an idea of whether there is a null or alternative hypothesis. 
