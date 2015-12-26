plot.2 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	png('plot2.png', width=777, height=888, bg='transparent')
	barplot(dt$Emissions, names.arg=dt$year, col='royalblue1', xlab='Year', ylab='Emissions (tons)', main='Total Emissions in Baltimore City')
	dev.off()
}

plot.2()
