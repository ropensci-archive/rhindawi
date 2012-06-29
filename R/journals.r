#' Get information on each journal.
#'    
#' @import XML
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' journals()
#' }
#' @export
journals <- function()
{
  temp <- xmlParse("~/hindwai/Subjects.xml")
  jtitle <- xpathSApply(temp, "//full.title", xmlValue)
  issn <- xpathSApply(temp, "//e-issn", xmlValue)
  doi <- xpathSApply(temp, "//doi", xmlValue)
  startyear <- xpathSApply(temp, "//start.year", xmlValue)
  pubyears <- xpathSApply(temp, "//publication.years", 
                          function(x) c(xmlValue(x)))
  data.frame(jtitle, issn, doi, startyear, pubyears)
}