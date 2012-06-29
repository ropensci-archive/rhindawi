# #' Search the Hindawi corpus locally.
# #' 
# #' The Hindawi corpus zip file (http://www.hindawi.com/corpus/) is updated 
# #'    every day. 
# #'    
# #' @import tm
# #' @param terms Search terms.
# #' @param fuzzy Fuzzy seearch? Defaults to FALSE.
# #' @param journal_title Journal title to search.
# #' @param year Year to search.
# #' @param directory Defaults to where they were written with getcorpus().
# #' @author Scott Chamberlain \email{myrmecocystus@@gmail.com}
# #' @examples \dontrun{
# #' hindawi_search()
# #' }
# #' @export
# hindawi_search <- function(terms = NA, , directory)
# {
# #   xmlParse("~/hindwai/2011/ISRN.SP/101582-2011-06-08.xml")
# }