library(dplyr)

#create mechacar dataframe
mechacar_df <- read.csv('MechaCar_mpg.csv')

#perform linear regression function
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

#perform summary of multiple linear regression
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df))

#create suspension coil dataframe
suscoil <- read.csv('Suspension_Coil.csv')

#create a summary of dataframe
total_summary <- summarize(suscoil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#create a grouped by lot summary dataframe
lot_summary <- suscoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")

#perform a t-test for all of psi data
total_test <- t.test(suscoil$PSI, mu = 1500)
#print the results
total_test

#perform a t-test for lot 1 of psi data
lot1_test <- t.test(subset(suscoil$PSI, suscoil$Manufacturing_Lot == "Lot1"), mu = 1500)
#print the results
lot1_test

#perform a t-test for lot 2 of psi data
lot2_test <- t.test(subset(suscoil$PSI, suscoil$Manufacturing_Lot == "Lot2"), mu = 1500)
#print the results
lot2_test

#perform a t-test for lot 3 of psi data
lot3_test <- t.test(subset(suscoil$PSI, suscoil$Manufacturing_Lot == "Lot3"), mu = 1500)
#print the results
lot3_test
