# It seems that Los Angeles County faced bigger changes over time in motor vehicle emissions.
#
# I draw two line graphs. Both graphs display total emissions from motor vehicles
#   minus minimum value over years.
#   So they both have bottom at zero. In such a way, I think, it is possible to nicely see
#   the size of changes.

# Let's use ggplot2.
library(ggplot2)

# This function does everything, it is called at the end.
plot.6 <- function() {
	# Load the data.
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# It is difficult to filter all motor vehicle sources by hand. So I join all textual fields on
	#  every SCC row and then I try to find interesting words in them. All items with interesting words
	#  are used to filter raws in NEI.
	#  In this way I can find all ONROAD types of sources and some other sources, like heating at truck vehicles.
	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('motor|gasoline|diesel', scc$name, ignore.case=TRUE),
						    grep('vehicle|\bveh\b|\bcar\b', scc$name, ignore.case=TRUE, perl=TRUE))] )

	# We want only items from motor vehicle sources.
	NEI <- NEI[NEI$SCC %in% sources,]

	# We want only items for Baltimore city and Los Angeles County.
	NEI <- NEI[NEI$fips %in% c('24510', '06037'),]


	# Add the names of the cities.
	NEI$City <- ifelse(NEI$fips == '24510', 'Baltimore City', 'Los Angeles County')

	# Aggregate emissions according to year and city.
	dt <- aggregate(Emissions ~ year + City, data=NEI, FUN=sum)

	# Substract minimum values. I bet it can be done in a more elegant way.
	dt[dt$City == 'Baltimore City', ]$Emissions <- dt[dt$City == 'Baltimore City', ]$Emissions - min(dt[dt$City == 'Baltimore City', ]$Emissions)
	dt[dt$City == 'Los Angeles County', ]$Emissions <- dt[dt$City == 'Los Angeles County', ]$Emissions - min(dt[dt$City == 'Los Angeles County', ]$Emissions)

	# Create and save the plots.
	ggplot(dt, aes(x=year, y=Emissions, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() + facet_grid(. ~ City) +
		ggtitle('Emissions from motor vehicle sources\nminus minimum value over years\n(in Baltimore City and in Los Angeles County)') +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (tons) - min')
	ggsave('plot6.png', width=10, height=10)
}

plot.6()
