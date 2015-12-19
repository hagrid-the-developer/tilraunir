# This function loads the data and draws the graph.
#
# 1. It loads all rows of the data. It loads only the first, the second column
#    and last three columns. Other columns aren't needed. Date and time columns
#    are loaded as strings.
# 2. It selects rows that are needed to display the graph. Rows are selected
#    according to the first column and string comparisions are performed.
# 3. New data frame is created. Its first column contains Date, that is
#    created from the first and second columns of the previous data.frame.
# 4. Graph is drawn.
gen.plot3 <- function(file, png.file='plot3.png', png.width=480, png.height=480) {
	png(png.file, width=png.width, height=png.height, bg='transparent')

	col.classes <- c('character', 'character', 'NULL', 'NULL', 'NULL', 'NULL', 'numeric', 'numeric', 'numeric')
	data <- read.csv(file, header=TRUE, sep=';', na.strings='?', quote='', colClasses=col.classes)
	data <- data[ data$Date %in% c('1/2/2007', '2/2/2007'), ]
	data <- data.frame(date=strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S'),
			   Sub_metering_1=data$Sub_metering_1,
			   Sub_metering_2=data$Sub_metering_2,
			   Sub_metering_3=data$Sub_metering_3)

	plot(data$date, data$Sub_metering_1, type='l', col='black', xlab='', ylab='Energy sub metering')
	lines(data$date, data$Sub_metering_2, type='l', col='red')
	lines(data$date, data$Sub_metering_3, type='l', col='blue')
	legend('topright', lty = 1, col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

	dev.off()
}

gen.plot3('household_power_consumption.txt')
