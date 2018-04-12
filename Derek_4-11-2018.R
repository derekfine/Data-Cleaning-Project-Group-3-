#Matt
#Set working directory and call dplyr and tidyr libraries 
setwd(filepath)
#for Matt's computer: filepath<-"C:/Users/owner/Documents/ECON 386/Project 1/ECON386REPO/Data Cleaning Project/Task 2"
library(dplyr)
library(tidyr)
#Create a vecotr of column names to be the header of the imported data. Unneeded columns will be titled delete_n
column_names<-c("Plant_ID", "delete_1", "Year", "Electricity", "SO2", "NOx", "Capital", "Employees", "Coal_hc", "Oil_hc", "Gas_hc", "delete_2", "delete_3")  #create a vector of column names 
#Upload data into R and simultaneously convert data.frames to tbl_df format
power<-tbl_df(read.table("Panel_8595.txt", skip=2, col.names = column_names))
#select the necessary columns
power_2<-select(power, -contains("delete"))

#Derek
View(power_2)
#visualize data
power_2$Electricity<-power_2$Electricity * .001
#convert the KWh into MWh
power_2$Electricity<-power_2$Electricity / 365
#convert yearly energy readings into daily
power_2$Coal_hc<-power_2$Coal_hc * 2.93071e-7
#convert british thermal units into MWh
power_2$Coal_hc<-power_2$Coal_hc / 365
#convert all energy measurements (energy produced and heat contents) into daily averages
power_2$Oil_hc<-power_2$Oil_hc * 2.93071e-7
#convert british thermal units into MWh
power_2$Oil_hc<-power_2$Oil_hc / 365
#convert all energy measurements (energy produced and heat contents) into daily averages
power_2$Gas_hc<-power_2$Gas_hc * 2.93071e-7
#convert british thermal units into MWh
power_2$Gas_hc<-power_2$Gas_hc * /365
#convert all energy measurements (energy produced and heat contents) into daily averages
power_2$SO2<-power_2$SO2 / 365
#convert pollutant quantities, measured in annualized short tons, into daily averages
power_2$NOx<-power_2$NOx / 365
#convert pollutant quantities, measured in annualized short tons, into daily averages
power_2$Capital<-power_2$Capital * 5.5132
#Convert all dollars (measured in 1973 $'s) into 2017 dollars
power_2$CAA<-ifelse(power_2$Year>=90, 1, 0)
#new column to address if Phase 1 was announce (after 1990)

