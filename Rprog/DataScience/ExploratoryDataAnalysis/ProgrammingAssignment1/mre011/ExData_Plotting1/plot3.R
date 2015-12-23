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

### Plot 3
plot(df$date_time, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
points(df$date_time, df$Sub_metering_2, type = "l", col = "red")
points(df$date_time, df$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2",  "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"),
       rect(w = 2, h = 2))

## Save Plot 3 to png file
png(file = "plot3.png", width = 480, height = 480)
with(
  plot(df$date_time, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
)
points(df$date_time, df$Sub_metering_2, type = "l", col = "red")
points(df$date_time, df$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2",  "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"),
       rect(w = 2, h = 2))
dev.off()