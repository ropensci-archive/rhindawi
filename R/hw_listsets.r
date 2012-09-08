#' Retrieve the set structure of Hindawi Publishing Corporation repository.
#'
#' @import OAIHarvester
#' @inheritParams hw_listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' sets <- hw_listsets()
#' head(sets)
#' }
#' @export
hw_listsets <- function(url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{ 
	out <- oaih_list_sets(url, transform = FALSE)
	data.frame(
		setSpec = sapply(xpathApply(out, "//setSpec"), xmlValue),
		setName = sapply(xpathApply(out, "//setName"), xmlValue)
	)
}