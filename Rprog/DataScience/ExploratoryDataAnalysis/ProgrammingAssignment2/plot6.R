library(ggplot2)

plot.6 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('motor|gasoline|diesel', scc$name, ignore.case=TRUE),
						    grep('vehicle|\bveh\b|\bcar\b', scc$name, ignore.case=TRUE, perl=TRUE))] )

	# We want only items from motor vehicle sources.
	NEI <- NEI[NEI$SCC %in% sources,]
	#NEI <- NEI[NEI$type == 'ON-ROAD', ]

	# We want only items for Baltimore city and Los Angeles County.
	NEI <- NEI[NEI$fips %in% c('24510', '06037'),]


	# Add name of the city
	NEI$City <- ifelse(NEI$fips == '24510', 'Baltimore City', 'Los Angeles County')

	dt <- aggregate(Emissions ~ year + City, data=NEI, FUN=sum)
	dt[dt$City == 'Baltimore City', ]$Emissions <- dt[dt$City == 'Baltimore City', ]$Emissions - min(dt[dt$City == 'Baltimore City', ]$Emissions)
	dt[dt$City == 'Los Angeles County', ]$Emissions <- dt[dt$City == 'Los Angeles County', ]$Emissions - min(dt[dt$City == 'Los Angeles County', ]$Emissions)
	ggplot(dt, aes(x=year, y=Emissions, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() + facet_grid(. ~ City) +
		ggtitle('Emissions from motor vehicle sources\nminus minimal value over years\n(in Baltimore City and in Los Angeles County)') +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (tons) - min')
	ggsave('plot6.png', width=10, height=10)
}

plot.6()
