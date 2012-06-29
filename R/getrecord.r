#' Retrieve an individual metadata record from a Hindawi Publishing Corporation repository.
#'
#' @import OAIHarvester
#' @inheritParams listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' out <- getrecord("10.1155/2011/391971", T)
#' out$datestamp # get $identifier, $datestamp, $setSpec, or $metadata
#' oaih_transform(out$metadata) # transform only metadata to a list
#' }
#' @export
getrecord <- function(id = NULL, transform = TRUE, 
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{
  if(!is.null(id) == T) {oaiid <- paste("oai:hindawi.com:", id, sep="")} else
      {oaiid <- NULL}
	oaih_get_record(
	  url, 
		oaiid, 
		prefix = "oai_dc", 
		transform = transform)
}