#' Download Hindawi corpus zip file to "~/".
#' 
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @details This function is also used for updating the corpus. 
#' @examples \dontrun{
#' downloadcorpus()
#' }
#' @export
downloadcorpus <- function()
{
  download.file(
    url = "ftp://hindawi.corpus:download@ftp.hindawi.com/articles.zip", 
    destfile = "~/hindawi_corpus.zip", quiet = TRUE)
}