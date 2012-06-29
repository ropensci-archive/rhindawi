#' Unzip downloaded corpus after using getcorpus().
#' 
#' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
#' @examples \dontrun{
#' unzipcorpus()
#' }
#' @export
unzipcorpus <- function()
{
  unzip("~/hindwai_corpus.zip", exdir="~/hindwai")
}