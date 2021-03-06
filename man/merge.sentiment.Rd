% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sentiment_engines.R
\name{merge.sentiment}
\alias{merge.sentiment}
\title{Merge sentiment objects horizontally and/or vertically}
\usage{
\method{merge}{sentiment}(...)
}
\arguments{
\item{...}{\code{sentiment} objects to merge.}
}
\value{
The new, combined, \code{sentiment} object, ordered by \code{"date"} and \code{"id"}.
}
\description{
Combines multiple \code{sentiment} objects with possibly different column names
into a new \code{sentiment} object. Here, too, any resulting \code{NA} values are converted to zero.
}
\examples{
data("usnews", package = "sentometrics")
data("list_lexicons", package = "sentometrics")
data("list_valence_shifters", package = "sentometrics")

l1 <- sento_lexicons(list_lexicons[c("LM_en", "HENRY_en")])
l2 <- sento_lexicons(list_lexicons[c("FEEL_en_tr")])
l3 <- sento_lexicons(list_lexicons[c("LM_en", "HENRY_en", "FEEL_en_tr")])

corp1 <- sento_corpus(corpusdf = usnews[1:200, ])
corp2 <- sento_corpus(corpusdf = usnews[201:450, ])
corp3 <- sento_corpus(corpusdf = usnews[401:700, ])

s1 <- compute_sentiment(corp1, l1, "proportionalPol")
s2 <- compute_sentiment(corp2, l1, "counts")
s3 <- compute_sentiment(corp3, l1, "counts")
s4 <- compute_sentiment(corp2, l1, "counts", do.sentence = TRUE)
s5 <- compute_sentiment(corp3, l2, "proportional", do.sentence = TRUE)
s6 <- compute_sentiment(corp3, l1, "counts", do.sentence = TRUE)
s7 <- compute_sentiment(corp3, l3, "UShaped", do.sentence = TRUE)

# straightforward row-wise merge
m1 <- merge(s1, s2, s3)
nrow(m1) == 700 # TRUE

# another straightforward row-wise merge
m2 <- merge(s4, s6)

# merge of sentence and non-sentence calculations
m3 <- merge(s3, s6)

# different methods adds columns
m4 <- merge(s4, s5)
nrow(m4) == nrow(m2) # TRUE

# different methods and weighting adds rows and columns
## rows are added only when the different weighting
## approach for a specific method gives other sentiment values
m5 <- merge(s4, s7)
nrow(m5) > nrow(m4) # TRUE

}
\author{
Samuel Borms
}
