library(dplyr)

# DELIVERABLE 1
# import csv 
MechaCar <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)
head(MechaCar)

# generate multiple linear regression model 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

# DELIVERABLE 2
# import and read in Suspension_Coil.csv file 
SuspCoil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create summary table using summarize() fcn 
# get mean, median, variance, SD of the suspension coil's PSI column 
total_summary <- SuspCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create lot_summary df using the group_by() and summarize() fcn to group each manufacturing lot by 
# mean,median,variance, and SD of suspension coil's PSI column 
lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
