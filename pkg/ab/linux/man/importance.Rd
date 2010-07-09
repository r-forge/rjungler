\name{importance}
\alias{importance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
importance
}
\description{
Loads the importance file(s) from the directorie which the \code{rjungle}
output was written to.
}
\usage{
importance(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  An object of class \code{rjungle}.
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A \code{\link{data.frame}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Daniel Schwarz
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{rjungle}}, \code{\link{predict}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(x, ...)  UseMethod("importance")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ importance}