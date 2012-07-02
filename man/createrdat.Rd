\name{createrdat}
\alias{createrdat}
\title{Create an .Rat file for the Hindawi corpus.}
\usage{
  createrdat()
}
\description{
  Create an .Rat file for the Hindawi corpus.
}
\details{
  This function loads the corpus into R, then writes the
  corpus to a file called hindawicorpus.Rdat for later use.
  The object is then cleared from R's memory.
}
\examples{
\dontrun{
createrdat()
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
  \code{\link{downloadcorpus}} and
  \code{\link{loadcorpus}}.
}
\keyword{create}
\keyword{rdat}

