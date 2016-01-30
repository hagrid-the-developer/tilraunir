library(ggplot2)

load.d <- function(file.name) {
	read.table(file.name, header=T)
}

draw.one.member <- function(d, member.id, normalize=F) {
	d[d$Member == member.id & d$Experiment >= 302, ] -> d

	unique ( d[, 'ExpectedOutput'] ) -> uniq_eo
	uniq_eo[seq(1, length(uniq_eo), 18)] -> uniq_eo
	union(uniq_eo, c(min(d[, 'ExpectedOutput']), max(d[, 'ExpectedOutput'])) ) -> uniq_eo
	d <- d[d$ExpectedOutput %in% uniq_eo, ]

	d$ExpectedOutputF <- as.factor(d$ExpectedOutput)
	d$StartF <- as.factor(d$Start)


	if (normalize) {
		for (start in unique(d$Start)) {
			for (eo in uniq_eo) {
				rows <- which(d$Start == start & d$ExpectedOutput == eo)
				if (0 == length(rows)) {
					warning(paste('Zero rows for: Start:', start, 'ExpectedOutput:', eo))
					next
				}
				a <- mean(c(d[rows, 'ExpectedOutput'], d[rows, 'RealOutput']))
				D <- max( abs(d[rows, 'ExpectedOutput'] - a), abs(d[rows, 'RealOutput'] - a) )
				d[rows, 'RealOutput'] <- ( d[rows, 'RealOutput'] - a ) / D
				d[rows, 'ExpectedOutput'] <- ( d[rows, 'ExpectedOutput'] - a ) / D
			}
		}
	}

	ggplot(d) +
	  geom_line(aes(y=RealOutput, x=Experiment, colour='Real Output')) +
	  geom_line(aes(y=ExpectedOutput, x=Experiment, colour='Expected Output')) +
	  facet_grid(StartF ~ ExpectedOutputF, shrink=F) +
	  theme(axis.ticks=element_blank(), axis.text=element_blank())

	# Musim ale jeste jit pres oba grafy ... takze, asi: avg z vystupu site, aby sel pres osu x, max pres oba vysupy (real i expected), aby se tam vesly...
	# (x - avg(RealOutput)) / max(abs(RealOutput - avg(RealOutput), ExpectedOutput - avg(RealOutput))) ... takhle nebude graf od -1 do 1!!
	# Jinak:
	#   A <- avg(RealOutput, ExpectedOutput)
	#   D <- max(abs(RealOutput - A), abs(ExpectedOutput - A))
	#   RealOutput <- (RealOutput - A) / D
	#   ExpectedOutput <- (ExpectedOutput - A) / D
	#
	# TODO:
	#  * Why does it contain NA in the graph?
	#  * Why some graphs don't contain values?
	#  * Why does output contain warning messages?
	#  Warning messages:
	#  1: Removed 1292500 rows containing missing values (geom_path).
	#  2: Removed 1292500 rows containing missing values (geom_path).
}
