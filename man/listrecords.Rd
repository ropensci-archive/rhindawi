\name{listrecords}
\alias{listrecords}
\title{Harvest records from a Hindawi Publishing Corporation repository.}
\usage{
  listrecords(from = NULL, until = NULL, set = NULL,
    prefix = "oai_dc", token = NULL, transform = TRUE,
    url = "http://www.hindawi.com/oai-pmh/oai.aspx")
}
\arguments{
  \item{from}{specifies that records returned must have
  been created/update/deleted on or after this date.}

  \item{until}{specifies that records returned must have
  been created/update/deleted on or before this date.}

  \item{set}{specifies the set that returned records must
  belong to.}

  \item{prefix}{specifies the metadata format that the
  records will be returned in.}

  \item{token}{a token previously provided by the server to
  resume a request where it last left off.}

  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for Hindwai (leave to default)}
}
\description{
  Harvest records from a Hindawi Publishing Corporation
  repository.
}
\examples{
\dontrun{
listrecords(set = 'AMET:2012', transform=F)
}
}

