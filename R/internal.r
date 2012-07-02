#' General function to read xml files in with error catching, 
#'    plus xpath parsing. 
#' 
#' @param x Complete directory to .xml file, including file name.
#' @param xpath A string (character vector of length 1) giving the XPath 
#'    expression to evaluate.
#' @keywords internal
#' @details Included reading xml file and xpath parsing so that whole xml
#'    files don't have to be read in, but only the text parsed on into RAM. 
#'    Typically this function will only be called internally by other fxns.
#' @examples
#' url <- "http://www.plosone.org/article/fetchObjectAttachment.action?uri=info%3Adoi%2F10.1371%2Fjournal.pone.0040348&representation=XML" 
#' getxml(url, "//publisher-name")
getxml  <- function(dir, xpath) {
  if(class(try(xpathApply(xmlParse(dir, error=NULL), xpath, xmlValue)[[1]])) == "try-error")
    {paste("bad xml file")} else
      {xpathApply(xmlParse(dir, error=NULL), xpath, xmlValue)[[1]]} 
}


#' General function to read xml files in with error catching, 
#'    plus xpath parsing. 
#' 
#' @param x Complete directory to .xml file, including file name.
#' @param xpath A string (character vector of length 1) giving the XPath 
#'    expression to evaluate.
#' @keywords internal
#' @details Included reading xml file and xpath parsing so that whole xml
#'    files don't have to be read in, but only the text parsed on into RAM. 
#'    Typically this function will only be called internally by other fxns.
#' @examples
#' url <- "http://www.plosone.org/article/fetchObjectAttachment.action?uri=info%3Adoi%2F10.1371%2Fjournal.pone.0040348&representation=XML" 
#' getxml_authors(url)
#' getxml_authors(dir="/Users/ScottMac/hindawi/2011/ISRN.GEOMETRY/161523-2011-08-15.xml")
getxml_authors  <- function(dir) {
  if(class(try(xmlParse(dir, error=NULL)))[[1]] == "try-error")
    {c(surnames="badxmlfile", givennames="badxmlfile")} else {
      out <- xmlParse(dir)
      nodes <- getNodeSet(out, "//contrib-group//name")
      mylist <- laply(nodes, xmlToList)
      foo <- function(x) {
        ifelse(!length(x) == 2, paste(x, ", none", sep=""), paste(x, collapse=", "))
      }
      llply(mylist, foo)
    } 
}