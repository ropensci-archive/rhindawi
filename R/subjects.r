#' Get the subjects areas for Hindawi journals, and the journals that 
#'    are in each subject.
#'    
#' @import XML
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' subjects()
#' }
#' @export
subjects <- function()
{
  temp <- xmlParse("~/hindwai/Subjects.xml")
  xpathSApply(temp, "//subject.title", xmlValue)
}