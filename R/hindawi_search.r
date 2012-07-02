#' Search the Hindawi corpus locally.
#'    
#' @import tm
#' @param terms Search terms.
#' @param fuzzy Fuzzy seearch? Defaults to FALSE.
#' @param journal_title Journal title to search.
#' @param year Year to search.
#' @param directory Defaults to where they were written with getcorpus().
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @seealso \code{\link{downloadcorpus}} and \code{\link{loadcorpus}} and \code{\link{createrdat}}.
#' @keywords create rdat
#' @details The Hindawi corpus zip file (http://www.hindawi.com/corpus/) is updated 
#'    every day. Use downloadcorpus() to update the corpus.
#' @examples \dontrun{
#' loadcorpus() # load the corpus first
#' hindawi_search() # then search
#' }
#' @export
hindawi_search <- function(terms = NA, fuzzy = FALSE, directory)
{
  xpathApply(tt, "//abstract")
  
}