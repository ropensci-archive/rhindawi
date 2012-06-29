\name{listmetadataformats}
\alias{listmetadataformats}
\title{Retrieve the metadata formats available from Hindawi Publishing Corporation repository.}
\usage{
  listmetadataformats(transform = TRUE,
    url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Retrieve the metadata formats available from Hindawi
  Publishing Corporation repository.
}
\examples{
\dontrun{
listmetadataformats()
}
}

