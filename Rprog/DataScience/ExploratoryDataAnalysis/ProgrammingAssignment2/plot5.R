# It seems emissions have decreased over the years.
# I draw line graph of emissions.

# Let's use ggplot2.
library(ggplot2)

# This function does everything, it is called at the end.
plot.5 <- function() {
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

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	# Aggregate emissions according to year.
	dt <- aggregate(Emissions ~ year, data=NEI, FUN=sum)

	# Create and save the plot.
	ggplot(dt, aes(x=year, y=Emissions, group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() +
		ggtitle('Emissions from motor vehicle sources\n(in Baltimore City)') +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (tons)')

	ggsave('plot5.png', width=7, height=7)
}

plot.5()
