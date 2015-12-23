# This function loads the data and draws the graph.
#
# 1. It loads all rows of the data. It loads only the first, the second and 
#    the third column. Other columns aren't needed. Date and time columns are
#    loaded as strings.
# 2. It selects rows that are needed to display the graph. Rows are selected
#    according to the first column and string comparisions are performed.
# 3. New data frame is created. Its first column contains Date, that is
#    created from the first and second columns of the previous data.frame.
# 4. Graph is drawn.
gen.plot2 <- function(file, png.file='plot2.png', png.width=480, png.height=480) {
	png(png.file, width=png.width, height=png.height, bg='transparent')

	col.classes <- c('character', 'character', 'numeric', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL')
	data <- read.csv(file, header=TRUE, sep=';', na.strings='?', quote='', colClasses=col.classes)
	data <- data[ data$Date %in% c('1/2/2007', '2/2/2007'), ]
	data <- data.frame(date=strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S'),
			   Global_active_power=data$Global_active_power)

	plot(data$date, data$Global_active_power, type='l', col='black', xlab='', ylab='Global Active Power (kilowats)')

	dev.off()
}

gen.plot2('household_power_consumption.txt')
