#' Get article titles in all papers in the corpus.
#' 
#' @import sacbox XML plyr ggplot2
#' @param plot Plot results or not. 
#' @param sumfxn Function to use to summarise article titles.
#' @return A list of article titles if plot=FALSE, or a plot if else summarising titles. 
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @seealso \code{\link{downloadcorpus}} and \code{\link{loadcorpus}} and \code{\link{createrdat}}.
#' @keywords title
#' @details This function looks across all files locally and extracts titles.
#' @examples \dontrun{
#' getarticletitles(plot=TRUE)
#' }
#' @export
getarticletitles <- function(plot = FALSE, sumfxn = "nchar"){
  setwd("~/hindawi")
  tt <- dir()
  folders <- suppressWarnings(as.numeric(tt)[!is.na(as.numeric(tt))])
  yeardirs <- paste(getwd(), folders, sep="/")
  
  allarticlesdir_ <- list()
  journaldir_ <- list()
  articledir_ <- list()
  for(i in 1:length(yeardirs)) {
    journaldir <- paste(yeardirs[[i]], dir(yeardirs[[i]]), sep="/")
    journaldir_[[i]] <- journaldir
    for(j in 1:length(journaldir)) {
      articledir_[[j]] <- paste(journaldir[[j]], dir(journaldir[[j]]), sep="/") 
    }
    allarticlesdir_[[i]] <- articledir_
  }
  aa <- unnest(allarticlesdir_)[[1]]
  
  ggg <- llply(aa, getxml, xpath="//title-group//article-title") # get titles
  
  if(plot == TRUE){  # plot histogram of titles by sumfxn
    qplot(laply(ggg, sumfxn), geom="histogram")
  } else {
    ggg
  }
}