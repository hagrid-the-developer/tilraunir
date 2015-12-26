library(ggplot2)

plot.5 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('motor|gasoline|diesel', scc$name, ignore.case=TRUE),
						    grep('vehicle|\bveh\b|\bcar\b', scc$name, ignore.case=TRUE, perl=TRUE))] )

	# We want only items from motor vehicle sources.
	NEI <- NEI[NEI$SCC %in% sources,]

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)
	ggplot(dt, aes(x=year, y=Emissions, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() +
		ggtitle('Emissions from motor vehicle sources\n(in Baltimore City)') +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (tons)')

	ggsave('plot5.png', width=7, height=7)
}

plot.5()
