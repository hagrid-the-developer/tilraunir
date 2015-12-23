# Read data into R
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset the the data for February 1st and 2nd, 2007 
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Create a variable called "datetime" for the x axis of the plots by combining the "Date" and "Time" variabes into one, and converting
#them from character data into a format that displays the data as "day/month/year followed by hour:minute:second" 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Convert the variables needed for the analyses from characer data to numeric data
globalActivePower <- as.numeric(subSetData$Global_active_power)
voltnum <- as.numeric(subSetData$Voltage)
globalReactivePower <- as.numeric(subSetData$Global_reactive_power)
submet1 <- as.numeric(subSetData$Sub_metering_1)
submet2 <- as.numeric(subSetData$Sub_metering_2)
submet3 <- as.numeric(subSetData$Sub_metering_3)

#Open the .png device, plot  the line graph, and close the .png device
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()