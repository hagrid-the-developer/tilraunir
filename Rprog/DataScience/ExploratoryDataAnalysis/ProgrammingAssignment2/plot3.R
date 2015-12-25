library(ggplot2)

plot.3 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	dt <- aggregate(Emissions ~ year + type, data=NEI, FUN=sum)
	ggplot(dt, aes(x=factor(year), y=log(Emissions), group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() + facet_grid(. ~ type)
}

#plot.3()
