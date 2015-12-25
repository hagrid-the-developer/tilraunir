library(ggplot2)

plot.6 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ union(intersect(grep('motor', scc$name, ignore.case=TRUE), grep('vehicle', scc$name, ignore.case=TRUE)),
						grep('car', scc$name, ignore.case=TRUE)) ] )

	# We want only items from motor vehicle sources.
	NEI <- NEI[NEI$SCC %in% sources,]

	# We want only items for Baltimore city and Los Angeles County.
	NEI <- NEI[NEI$fips %in% c('24510', '06037'),]

	# Add name of the city
	NEI$City <- ifelse(NEI$fips == '24510', 'Baltimore City', 'Los Angeles County')

	dt <- aggregate(Emissions ~ year + City, data=NEI, FUN=sum)
	ggplot(dt, aes(x=factor(year), y=Emissions, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() + facet_grid(. ~ City)
}

#plot.6()
