# rm(list=ls())
# 
# setwd("C:/Users/Michael/Desktop/coursera/ExData_Plotting1")
# getwd()
# dir()

library(dplyr)
library(lubridate)

df <- read.table("household_power_consumption.txt", 
                 header = TRUE,
                 na.strings = "?",
                 sep = ";",
                 stringsAsFactors = FALSE)

df <- mutate(df, Date = dmy(Date)) %>%
  filter(as.Date(Date) >= "2007-02-01") %>%
  filter(Date < "2007-02-2") %>%
  mutate(date_time = ymd_hms(paste(Date, Time)))

### Plot 1
hist(df$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")


## Save Plot 1 to png file
png(file = "plot1.png", width = 480, height = 480)
with(
  hist(df$Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red")
)
dev.off()