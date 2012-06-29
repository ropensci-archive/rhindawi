#' Retrieve information about the Hindwai repository.
#'
#' Learn about the Hindwai OAI-PMH service
#' @import OAIHarvester
#' @inheritParams listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' identify()
#' }
#' @export
identify <- function(transform = TRUE, 
  url = "http://www.hindawi.com/oai-pmh/oai.aspx") 
{ 
  oaih_identify(url, transform = transform)
}