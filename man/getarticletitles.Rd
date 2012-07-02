\name{getarticletitles}
\alias{getarticletitles}
\title{Get article titles in all papers in the corpus.}
\usage{
  getarticletitles(plot = FALSE, sumfxn = "nchar")
}
\arguments{
  \item{plot}{Plot results or not.}

  \item{sumfxn}{Function to use to summarise article
  titles.}
}
\value{
  A list of article titles if plot=FALSE, or a plot if else
  summarising titles.
}
\description{
  Get article titles in all papers in the corpus.
}
\details{
  This function looks across all files locally and extracts
  titles.
}
\examples{
\dontrun{
getarticletitles(plot=TRUE)
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
  \code{\link{downloadcorpus}} and \code{\link{loadcorpus}}
  and \code{\link{createrdat}}.
}
\keyword{title}

