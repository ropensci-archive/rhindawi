\name{listsets}
\alias{listsets}
\title{Retrieve the set structure of Hindawi Publishing Corporation repository.}
\usage{
  listsets(transform = TRUE,
    url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Retrieve the set structure of Hindawi Publishing
  Corporation repository.
}
\examples{
\dontrun{
sets <- listsets()
head(sets)
}
}

