#' Create an .Rat file for the Hindawi corpus.
#'
#' @import plyr XML
#' @seealso \code{\link{downloadcorpus}} and \code{\link{loadcorpus}}.
#' @keywords create rdat
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @details This function loads the corpus into R, then writes the corpus 
#'    to a file called hindawicorpus.Rdat for later use. The object is then 
#'    cleared from R's memory.
#' @examples \dontrun{
#' createrdat()
#' }
#' @export
createrdat <- function()
{
  getxml  <- function(w, v) {
    if(class(try(xmlParse(paste(w, v, sep='/')), silent=T))[[1]] == "try-error") {
      NULL
    } else
    {
      xmlParse(paste(w, v, sep='/'))
    }
  }
  
  setwd("~/hindawi")
  tt <- dir()
  folders <- suppressWarnings(as.numeric(tt)[!is.na(as.numeric(tt))])
  yeardirs <- paste(getwd(), folders, sep="/")
  journaldirs_ <- list()
  for(i in 1:length(yeardirs)) {
    journaldirs_[[i]] <- paste(yeardirs[[i]], dir(yeardirs[[i]]), sep="/")
  }
  journaldirs <- c(journaldirs_[[1]], journaldirs_[[2]])
  hindawi_corpus <- list()
  for(i in 1:length(journaldirs)) {
    zz <- dir(journaldirs[[i]])
    temp <- llply(zz, function(y) getxml(journaldirs[[i]], y))
    hindawi_corpus[[i]] <- temp
  }
#   saveXML(hindawi_corpus[[1]][[1]], file="hindawicorpus1.xml")
#   save(hindawi_corpus, file="hindawicorpus.Rdata")
  rm(hindawi_corpus)
}