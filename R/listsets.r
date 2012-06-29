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
listsets <- function(transform = TRUE,
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{ 
	oaih_list_sets(url, transform = transform)
}