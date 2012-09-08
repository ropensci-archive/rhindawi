#' Harvest records from a Hindawi Publishing Corporation repository.
#'
#' @import OAIHarvester
#' @inheritParams hw_listidentifiers
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' hw_listrecords(set = 'AMET:2012', transform=F)
#' }
#' @export
hw_listrecords <- function(from = NULL, until = NULL, set = NULL, prefix = 'oai_dc', 
  token = NULL, transform = TRUE,
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{
	oaih_list_records(
    url, 
    prefix = prefix,
    from = from,
    until = until,
    set = set,
		transform = transform)
}