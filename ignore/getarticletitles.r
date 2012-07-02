#' Search the Hindawi corpus locally for journal titles.
#'    
#' @import XML
#' @param terms Search terms.
#' @param journal_title Journal title to search.
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @seealso \code{\link{hindawi_search}}.
#' @return A data.frame of article titles.
#' @keywords create rdat
#' @examples \dontrun{
#' loadcorpus() # load the corpus first
#' getarticletitles() # then search
#' }
#' @export
getarticletitles <- function(journal_title = NA)
{
  str(hindawi_corpus[[1]][[1]])
  xpathApply(hindawi_corpus[[1]][[5]], "//abstract")
  
}

# temp <- lapply(dir(journaldirs[[1]]), function(x) xmlParse(paste(journaldirs[[1]], x, sep='/')) )
temp <- laply(dir(journaldirs[[1]]), function(x) paste(journaldirs[[1]], x, sep='/') )
doc.corpus <- Corpus(DirSource(journaldirs[[1]]), readerControl=list(reader = readXML), spec = "String", type = "unevaluated")
inspect(doc.corpus)
doc.corpus[[15]]
Dictionary(doc.corpus[[15]])
xmlParse(doc.corpus[[15]])
xpathApply(xmlParse(doc.corpus[[15]]), "//journal-title")

get.tdm <- function(doc.vec) {
  control <- list(stopwords=TRUE, removePunctuation=TRUE, removeNumbers=TRUE, 
                  minDocFreq=2)
  doc.dtm <- TermDocumentMatrix(doc.corpus, control)
  return(doc.dtm)
}

spam.tdm <- get.tdm(all.spam)