plot.1 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)
	barplot(dt$Emissions, names.arg=dt$year, xlab='Year', ylab='Emissions')
}

#plot.1()
