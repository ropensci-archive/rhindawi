\name{getauthors}
\alias{getauthors}
\title{Get article authors in all papers in the corpus.}
\usage{
  getauthors(plot = FALSE, sumfxn = "length", ...)
}
\arguments{
  \item{plot}{Plot results or not.}

  \item{sumfxn}{Function to use to summarise article
  titles.}
}
\value{
  A list of authors if plot=FALSE, or a plot if else
  summarising authors.
}
\description{
  Get article authors in all papers in the corpus.
}
\details{
  This function looks across all files locally and extracts
  authors.
}
\examples{
\dontrun{
authors <- getauthors()
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
  \code{\link{getarticletitles}}.
}
\keyword{authors}

