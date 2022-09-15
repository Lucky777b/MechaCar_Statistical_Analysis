library(dplyr)

# import csv 
MechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
head(MechaCar)

# generate multiple linear regression model 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))
