#' Retrieve an abbreviated form of List Records, retrieving only headers 
#'    rather than records for specific volume in journal
#'
#' @import OAIHarvester
#' @param from specifies that records returned must have been created/update/deleted 
#'     on or after this date.
#' @param until specifies that records returned must have been created/update/deleted 
#'     on or before this date.
#' @param set specifies the set that returned records must belong to.
#' @param prefix specifies the metadata format that the records will be 
#'     returned in. 
#' @param token a token previously provided by the server to resume a request
#'     where it last left off.
#' @inheritParams hw_listmetadataformats
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' temp <- hw_listidentifiers()
#' temp[[1]] # 
#' hw_listidentifiers(set = 'aaa:2007')
#' }
#' @export
hw_listidentifiers <- function(from = NULL, until = NULL, set = NULL, 
  prefix = 'oai_dc', token = NULL, transform = TRUE,
  url = "http://www.hindawi.com/oai-pmh/oai.aspx")
{
  oaih_list_identifiers(
    url, 
    prefix = prefix,
    from = from,
    until = until,
    set = set,
    transform = transform)
}