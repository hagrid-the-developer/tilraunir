# It seems that emissions from coal combustion-related sources were decreasing.
# I draw line graph of total emissions from coal combustion-related to display it.

# Let's use ggplot2.
library(ggplot2)

# This function does everything, it is called at the end.
plot.4 <- function() {
	# Load the data.
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# It is difficult to filter all coal combustion-related sources by hand. So I join all textual fields on
	#  every SCC row and then I try to find interesting words in them. All items with interesting words
	#  are used to filter raws in NEI.
	#  Please note that I use all words that contain 'coal', so not only 'coal', but eg. 'charcoal' is a positive match.
	#  I think that that charcoal emissions count to coal emissions too.
	scc <- data.frame(name=paste(SCC$Short.Name, SCC$EI.Sector, SCC$SCC.Level.One, SCC$SCC.Level.Two, SCC$SCC.Level.Three, SCC$SCC.Level.Four), scc=SCC$SCC)
	sources <- as.character( scc$scc[ intersect(grep('coal', scc$name, ignore.case=TRUE), grep('combustion', scc$name, ignore.case=TRUE)) ] )

	# We want only items from coal combustion sources.
	NEI <- NEI[NEI$SCC %in% sources,]

	# Aggregate emissions according to year.
	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	# Create and save the plot.
	ggplot(dt, aes(x=year, y=Emissions/1000, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() +
		ggtitle('Emissions from coal combustion-related sources\n(in the United States)') +
		theme(axis.text.y=element_text(angle=90, hjust=1/2)) +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (thousands of tons)')

	ggsave('plot4.png', width=7, height=7)
}

plot.4()
