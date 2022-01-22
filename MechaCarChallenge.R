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
