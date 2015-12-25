plot.2 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)
	barplot(dt$Emissions, names.arg=dt$year, xlab='Year', ylab='Emissions')
}

#plot.2()
