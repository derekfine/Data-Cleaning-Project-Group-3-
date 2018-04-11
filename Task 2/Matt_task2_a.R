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