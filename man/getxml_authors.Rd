\name{getxml_authors}
\alias{getxml_authors}
\title{General function to read xml files in with error catching,
   plus xpath parsing.}
\usage{
  getxml_authors(dir)
}
\arguments{
  \item{x}{Complete directory to .xml file, including file
  name.}

  \item{xpath}{A string (character vector of length 1)
  giving the XPath expression to evaluate.}
}
\description{
  General function to read xml files in with error
  catching, plus xpath parsing.
}
\details{
  Included reading xml file and xpath parsing so that whole
  xml files don't have to be read in, but only the text
  parsed on into RAM.  Typically this function will only be
  called internally by other fxns.
}
\examples{
url <- "http://www.plosone.org/article/fetchObjectAttachment.action?uri=info\%3Adoi\%2F10.1371\%2Fjournal.pone.0040348&representation=XML"
getxml_authors(url)
getxml_authors(dir="/Users/ScottMac/hindawi/2011/ISRN.GEOMETRY/161523-2011-08-15.xml")
}
\keyword{internal}

