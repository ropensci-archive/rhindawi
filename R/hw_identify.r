#' Retrieve information about the Hindwai repository.
#'
#' Learn about the Hindwai OAI-PMH service
#' @import OAIHarvester
#' @inheritParams hw_listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' hw_identify()
#' }
#' @export
hw_identify <- function(transform = TRUE, 
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{ 
  oaih_identify(url, transform = transform)
}