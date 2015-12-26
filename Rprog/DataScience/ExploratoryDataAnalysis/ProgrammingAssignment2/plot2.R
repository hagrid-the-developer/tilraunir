# Total emissions have decreased from 1999 - 2008, but they increased between 2002 and 2005.
# I use barplot to display this.

# This function does everything, it is called at the end.
plot.2 <- function() {
	# Load the data.
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	# Aggregate emissions according to year.
	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	# Create and save the plot.
	png('plot2.png', width=777, height=888, bg='transparent')
	barplot(dt$Emissions, names.arg=dt$year, col='royalblue1', xlab='Year', ylab='Emissions (tons)', main='Total Emissions in Baltimore City')
	dev.off()
}

plot.2()
