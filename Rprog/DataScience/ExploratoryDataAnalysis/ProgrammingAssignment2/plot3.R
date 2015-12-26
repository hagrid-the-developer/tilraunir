# It seems that POINT emissions were incresing till 2005 and then they started descrasing, but they still have greater value than in 1999.
# Emissions of other types were descreasing.
# I use 4 line graphs to display this.

# Let's use ggplot2.
library(ggplot2)

# This function does everything, it is called at the end.
plot.3 <- function() {
	# Load the data.
	NEI <- readRDS("summarySCC_PM25.rds")
	SCC <- readRDS("Source_Classification_Code.rds")

	# We want only items for Baltimore city.
	NEI <- NEI[NEI$fips == '24510',]

	# Aggregate emissions according to year and type.
	dt <- aggregate(Emissions ~ year + type, data=NEI, FUN=sum)

	# Create and save the plots.
	ggplot(dt, aes(x=year, y=log(Emissions), group=1)) + geom_point(stat = 'identity', size = 2) + geom_line() + facet_grid(. ~ type) +
		ggtitle('Emissions in Baltimore City by type') +
		scale_x_continuous(name='Year') +
		scale_y_continuous(name='Emissions (tons)')

	ggsave('plot3.png', width=9, height=9)
}

plot.3()
