\name{listidentifiers}
\alias{listidentifiers}
\title{Retrieve an abbreviated form of List Records, retrieving only headers
   rather than records for specific volume in journal}
\usage{
  listidentifiers(from = NULL, until = NULL, set = NULL,
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
  Retrieve an abbreviated form of List Records, retrieving
  only headers rather than records for specific volume in
  journal
}
\examples{
\dontrun{
temp <- listidentifiers()
temp[[1]] #
listidentifiers(set = 'aaa:2007')
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}

