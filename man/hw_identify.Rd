\name{hw_identify}
\alias{hw_identify}
\title{Retrieve information about the Hindwai repository.}
\usage{
  hw_identify(transform = TRUE,
    url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Learn about the Hindwai OAI-PMH service
}
\examples{
\dontrun{
hw_identify()
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}

