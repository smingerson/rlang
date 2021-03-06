% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/types.R
\name{scalar-type-predicates}
\alias{scalar-type-predicates}
\alias{is_scalar_list}
\alias{is_scalar_atomic}
\alias{is_scalar_vector}
\alias{is_scalar_integer}
\alias{is_scalar_double}
\alias{is_scalar_character}
\alias{is_scalar_logical}
\alias{is_scalar_raw}
\alias{is_string}
\alias{is_scalar_bytes}
\alias{is_bool}
\title{Scalar type predicates}
\usage{
is_scalar_list(x)

is_scalar_atomic(x)

is_scalar_vector(x)

is_scalar_integer(x)

is_scalar_double(x)

is_scalar_character(x, encoding = NULL)

is_scalar_logical(x)

is_scalar_raw(x)

is_string(x, string = NULL)

is_scalar_bytes(x)

is_bool(x)
}
\arguments{
\item{x}{object to be tested.}

\item{encoding}{Defunct as of rlang 0.4.0.}

\item{string}{A string to compare to \code{x}. If a character vector,
returns \code{TRUE} if at least one element is equal to \code{x}.}
}
\description{
These predicates check for a given type and whether the vector is
"scalar", that is, of length 1.

In addition to the length check, \code{is_string()} and \code{is_bool()}
return \code{FALSE} if their input is missing. This is useful for
type-checking arguments, when your function expects a single string
or a single \code{TRUE} or \code{FALSE}.
}
\seealso{
\link{type-predicates}, \link{bare-type-predicates}
}
