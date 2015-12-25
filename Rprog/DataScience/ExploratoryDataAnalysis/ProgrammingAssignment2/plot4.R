library(ggplot2)

# 2810025000 -- Is charcola a coal?

plot.4 <- function() {
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('coal', scc$name, ignore.case=TRUE), grep('combustion', scc$name, ignore.case=TRUE)) ] )

	# We want only items from coal combustion sources.
	NEI <- NEI[NEI$SCC == sources,]

	dt <- aggregate(Emissions ~ year + type, data=NEI, FUN=sum)
	ggplot(dt, aes(x=factor(year), y=log(Emissions), group=1)) + geom_point(stat = 'identity', size = 2) + geom_line()
}

#plot.4()
