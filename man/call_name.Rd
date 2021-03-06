% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call.R
\name{call_name}
\alias{call_name}
\alias{call_ns}
\title{Extract function name or namespaced of a call}
\usage{
call_name(call)

call_ns(call)
}
\arguments{
\item{call}{Can be a call or a quosure that wraps a call.}
}
\value{
A string with the function name, or \code{NULL} if the function
is anonymous.
}
\description{
Extract function name or namespaced of a call
}
\section{Life cycle}{


In rlang 0.2.0, \code{lang_name()} was deprecated and renamed to
\code{call_name()}. See lifecycle section in \code{\link[=call2]{call2()}} for more about
this change.
}

\examples{
# Extract the function name from quoted calls:
call_name(quote(foo(bar)))
call_name(quo(foo(bar)))

# Namespaced calls are correctly handled:
call_name(~base::matrix(baz))

# Anonymous and subsetted functions return NULL:
call_name(quote(foo$bar()))
call_name(quote(foo[[bar]]()))
call_name(quote(foo()()))

# Extract namespace of a call with call_ns():
call_ns(quote(base::bar()))

# If not namespaced, call_ns() returns NULL:
call_ns(quote(bar()))
}
\seealso{
\code{\link[=call_fn]{call_fn()}}
}
