plot.1 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	png('plot1.png', width=777, height=888, bg='transparent')
	barplot(dt$Emissions/10^6, names.arg=dt$year, col='royalblue1', xlab='Year', ylab='Emissions (millinons of tons)', main='Total Emissions in United States')
	dev.off()
}

plot.1()
