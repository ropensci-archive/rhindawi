#' Retrieve the set structure of Hindawi Publishing Corporation repository.
#'
#' @import OAIHarvester
#' @inheritParams listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' sets <- listsets()
#' head(sets)
#' }
#' @export
listsets <- function(url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{ 
	out <- oaih_list_sets(url, transform = FALSE)
	data.frame(
		setSpec = sapply(xpathApply(out, "//setSpec"), xmlValue),
		setName = sapply(xpathApply(out, "//setName"), xmlValue)
	)
}