# Total emissions have been decreasing in the United States.
# I use barplot to display this.

# This function does everything, it is called at the end.
plot.1 <- function() {
	# Load the data.
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# Aggregate emissions according to year.
	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	# Create and save the plot.
	png('plot1.png', width=777, height=888, bg='transparent')
	barplot(dt$Emissions/10^6, names.arg=dt$year, col='royalblue1', xlab='Year', ylab='Emissions (millions of tons)', main='Total Emissions in United States')
	dev.off()
}

plot.1()
