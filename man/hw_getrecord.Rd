\name{hw_getrecord}
\alias{hw_getrecord}
\title{Retrieve an individual metadata record from a Hindawi Publishing Corporation repository.}
\usage{
  hw_getrecord(id = NULL, transform = TRUE,
    url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Retrieve an individual metadata record from a Hindawi
  Publishing Corporation repository.
}
\examples{
\dontrun{
out <- hw_getrecord("10.1155/2011/391971", T)
out$datestamp # get $identifier, $datestamp, $setSpec, or $metadata
oaih_transform(out$metadata) # transform only metadata to a list
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}

