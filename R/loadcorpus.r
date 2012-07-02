#' Load the Hindawi corpus into R as a nested list of XML files.
#'  
#' @import plyr XML
#' @seealso \code{\link{downloadcorpus}} and \code{\link{createrdat}}.
#' @keywords load
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' loadcorpus()
#' }
#' @export
loadcorpus <- function()
{
  load(file="~/hindawi/hindawicorpus.Rdata", envir=.GlobalEnv)
}