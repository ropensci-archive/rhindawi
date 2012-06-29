#' Retrieve the metadata formats available from Hindawi Publishing Corporation repository.
#'
#' @import OAIHarvester
#' @param transform transform metadata to list (TRUE/FALSE)
#' @param url the base url for Hindwai (leave to default)
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' listmetadataformats()
#' }
#' @export
listmetadataformats <- function(transform = TRUE,
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{
	oaih_list_metadata_formats(url, transform = transform)
}