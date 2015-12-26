library(ggplot2)

# 2810025000 -- Is charcoal a coal?

plot.4 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('coal', scc$name, ignore.case=TRUE), grep('combustion', scc$name, ignore.case=TRUE)) ] )

	# We want only items from coal combustion sources.
	NEI <- NEI[NEI$SCC %in% sources,]

	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)
	ggplot(dt, aes(x=year, y=Emissions/1000, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() +
		ggtitle('Emissions from coal combustion-related sources\n(in United States)') +
		theme(axis.text.y=element_text(angle=90, hjust=1/2)) +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (thousands of tons)')

	ggsave('plot4.png', width=7, height=7)
}

plot.4()
