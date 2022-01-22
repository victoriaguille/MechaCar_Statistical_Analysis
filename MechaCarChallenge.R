library(dplyr)

#create mechacar dataframe
mechacar_df <- read.csv('MechaCar_mpg.csv')

#perform linear regression function
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

#perform summary of multiple linear regression
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df))
