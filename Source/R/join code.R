library(plyr)
library(dplyr)

setwd("/Users/aditya/Desktop/Hackathon")

bchi = read.csv("BCHI_opioid.csv")
vssr = read.csv("VSSR_Opiod.csv")

joined <- join(gchi, vssr, by = "Year", type="inner") #Main Join Function
newjoined <- subset(joined, select = c(Indicator.Category, Indicator, Year, Sex, Value, Place, State.Name, Month, Data.Value)) #Getting only needed columns
