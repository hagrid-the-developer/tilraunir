#' Returns currency exchange rates according to the Czech National Bank
#'
#' @param date Date in the form 'DD.MM.YYYY'
#'
#' @return Currency exchange rates as data.frame .

read.cnb <- function(date=NULL) {
	url <- 'https://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.txt'
	if (!is.null(date)) {
		url <- paste0(url, '?date=', date)
	}
	read.csv(url, skip=1, header=TRUE, sep='|', dec=',')
}


