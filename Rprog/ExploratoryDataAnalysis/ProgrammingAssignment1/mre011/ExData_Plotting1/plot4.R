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

### Plot 4
par(mfrow = c(2,2))
plot(df$date_time, df$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

plot(df$date_time, df$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(df$date_time, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
points(df$date_time, df$Sub_metering_2, type = "l", col = "red")
points(df$date_time, df$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2",  "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"),
       rect(w = 0.2, h = 0.2), bty = "n")

plot(df$date_time, df$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

## Save Plot 4 to png file
png(file = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(
  plot(df$date_time, df$Global_active_power, type = "l",
       xlab = "", ylab = "Global Active Power (kilowatts)")
)
with(
  plot(df$date_time, df$Voltage, type = "l",
       xlab = "datetime", ylab = "Voltage")
)
with(
  plot(df$date_time, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
)
points(df$date_time, df$Sub_metering_2, type = "l", col = "red")
points(df$date_time, df$Sub_metering_3, type = "l", col = "blue")
legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2",  "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"),
       rect(w = 2, h = 2))
with(
  plot(df$date_time, df$Global_reactive_power, type = "l",
       xlab = "datetime", ylab = "Global_reactive_power")
)
dev.off()

