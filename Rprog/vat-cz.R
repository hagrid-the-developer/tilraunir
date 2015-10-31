#' For given amount, calculates value of Czech VAT.
#'
#' @return Vector of values related to VAT. 

czech.vat <- function(amount, vat=21) {
	vals <- c(amount, (vat/100.)*amount, (1 + vat/100.)*amount, vat)
	names(vals) <- c('without_vat', 'vat', 'with_vat', 'vat_value')

	vals
}

format.for.tex <- function(x) {
	format(x, digits=2, nsmall=2, decimal.mark='.', big.mark='\\,')
}

format.for.tex.wide <- function(x) {
	format(x, digits=2, nsmall=2, decimal.mark='.', big.mark='\\ ')
}
