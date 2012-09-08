\name{hw_listsets}
\alias{hw_listsets}
\title{Retrieve the set structure of Hindawi Publishing Corporation repository.}
\usage{
  hw_listsets(url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Retrieve the set structure of Hindawi Publishing
  Corporation repository.
}
\examples{
\dontrun{
sets <- hw_listsets()
head(sets)
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}

