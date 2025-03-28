% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conditions.R
\name{all.equal.condition}
\alias{all.equal.condition}
\alias{all.equal,condition,ANY-method}
\alias{all.equal,conditionList,ANY-method}
\alias{all.equal.conditionList}
\title{Compare Conditions}
\usage{
\S4method{all.equal}{conditionList,ANY}(target, current, ...)

\method{all.equal}{conditionList}(target, current, ...)

\method{all.equal}{condition}(target, current, ...)
}
\arguments{
\item{target}{the list of conditions that we are matching against}

\item{current}{the list of conditions we are checking}

\item{...}{provided for compatibility with generic}
}
\value{
TRUE if the (lists of) conditions are equivalent, a character
  vector explaining why they are not otherwise
}
\description{
Tests that issue warnings or `stop` produce \code{\link{condition}} objects.
The functions documented here are specialized versions of
\code{\link{all.equal}} designed specifically to compare conditions and
condition lists produced during \code{unitizer} test evaluations.
\code{\link{conditionList}} objects are lists of conditions that come about
when test expressions emit multiple conditions (e.g. more than one warning).
}
\details{
\code{\link{condition}} objects produced by tests have one additional
attributed \dQuote{printed} which disambiguates whether a condition was the
result of the test expression, or the \code{print} / \code{show} method used
to display it to screen.

For \code{conditionList} objects, these methods only return TRUE if all
conditions are pairwise \code{all.equal}.
}
\examples{
cond.1 <- simpleWarning('hello world')
cond.2 <- simpleError('hello world')
cond.3 <- simpleError('goodbye world')
all.equal(cond.1, cond.1)
all.equal(cond.1, cond.2)
all.equal(cond.2, cond.3)
## Normally you would never actually create a `conditionList` yourself; these
## are automatically generated by `unitizer` for review at the `unitizer`
## prompt
all.equal(
  conditionList(.items=list(cond.1, cond.2)),
  conditionList(.items=list(cond.1, cond.3))
)
}
