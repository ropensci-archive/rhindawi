#' Download Hindawi corpus zip file to "~/".
#' 
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' getcorpus()
#' }
#' @export
getcorpus <- function()
{
  download.file(
    url = "ftp://hindawi.corpus:download@ftp.hindawi.com/articles.zip", 
    destfile = "~/hindwai_corpus.zip", quiet = TRUE)
}