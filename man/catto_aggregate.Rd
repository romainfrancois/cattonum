% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate.R
\name{catto_aggregate}
\alias{catto_aggregate}
\title{Aggregate function encoding}
\usage{
catto_aggregate(
  train,
  ...,
  aggregate_fun,
  response = NULL,
  test = NULL,
  verbose = TRUE
)
}
\arguments{
\item{train}{The training data, in a \code{data.frame} or \code{tibble}.}

\item{...}{The columns to be encoded.  If none are specified, then
all character and factor columns are encoded.}

\item{aggregate_fun}{The aggregate function to be applied to the response
variable for the rows belonging to the relevant level of the categorical
predictor.  Takes a vector and returns a length one vector.}

\item{response}{The response variable used to calculate aggregate summaries.}

\item{test}{The test data, in a \code{data.frame} or \code{tibble}.}

\item{verbose}{Should informative messages be printed?  Defaults to
\code{TRUE}.}
}
\value{
The encoded dataset in a \code{cattonum_df} if no test dataset was
provided, and the encoded datasets in a \code{cattonum_df2} otherwise.
}
\description{
Aggregate function encoding
}
\examples{
catto_aggregate(iris, aggregate_fun = max, response = Sepal.Length)
}
