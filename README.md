rhindawi
========

Install using install_github within [Hadley's](https://github.com/hadley/devtools) devtools package.

```R
install.packages("devtools")
require(devtools)
install_github("rhindawi", "ropensci")
require(rhindawi)
```

This package will access 1) Hindawi Journals metadata, and 2) the full corpus.  The full corpus is apparently updated daily. There is no API for the full text, but functions in this package (`getcorpus()`, `unzipcorpus()`, `hindawi_search()`) allow easy download and searching of the full corpus. 


+ [Hindawi Journals OAI-PMH metadata documentation](http://www.hindawi.com/oai-pmh/)
+ [Hindawi Journals corpus download](http://www.hindawi.com/corpus/)
+ [Documentation for OAI-PMH in general](http://www.openarchives.org/OAI/openarchivesprotocol.html)

You do not need an API key, or other authentication.

`rhindwai` is part of the rOpenSci project, visit http://ropensci.org to learn more.