\name{hindawi_search}
\alias{hindawi_search}
\title{Search the Hindawi corpus locally.}
\usage{
  hindawi_search(terms = NA, fuzzy = FALSE, directory)
}
\arguments{
  \item{terms}{Search terms.}

  \item{fuzzy}{Fuzzy seearch? Defaults to FALSE.}

  \item{journal_title}{Journal title to search.}

  \item{year}{Year to search.}

  \item{directory}{Defaults to where they were written with
  getcorpus().}
}
\description{
  Search the Hindawi corpus locally.
}
\details{
  The Hindawi corpus zip file
  (http://www.hindawi.com/corpus/) is updated every day.
  Use downloadcorpus() to update the corpus.
}
\examples{
\dontrun{
loadcorpus() # load the corpus first
hindawi_search() # then search
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
  \code{\link{downloadcorpus}} and \code{\link{loadcorpus}}
  and \code{\link{createrdat}}.
}
\keyword{create}
\keyword{rdat}

