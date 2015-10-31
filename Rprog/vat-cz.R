#' For given amount, calculates value of Czech VAT.
#'
#' @return Vector of values related to VAT. 

czech.vat <- function(amount) {
	vat = 0.21

	vals <- c(amount, vat*amount, (1 + vat)*amount, vat)

	frm <- sapply(vals, function(x) format(x, digits=2, nsmall=2, decimal.mark=','))
	names(frm) <- c('without_vat', 'vat', 'with_vat', 'vat_value')

	frm
}
