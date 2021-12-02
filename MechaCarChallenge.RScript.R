library(tidyverse)
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)
)



coil_df <- car_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- summarize(coil_df, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


t.test((coil_df$PSI), mu=1500)

lot_one = subset(coil_df, Manufacturing_Lot == 'Lot1')
lot_two = subset(coil_df, Manufacturing_Lot == 'Lot2')
lot_three = subset(coil_df, Manufacturing_Lot == 'Lot3')

t.test((lot_one$PSI), mu=1500)

t.test((lot_two$PSI), mu=1500)

t.test((lot_three$PSI), mu=1500)

