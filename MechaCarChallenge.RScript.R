library(tidyverse)
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)
)



#coil_df <- car_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


