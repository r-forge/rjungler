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
 A \code{data.frame}. If \code{\link{rjungle}} was called with \code{imp=2}, 
 rows represent the input variables ordered by index and columns contain 
 Gini index as well as Raw-, Breiman-, Liaw- and Meng-Score, SDs for the 
 Breiman- and Meng-Score, variable names and the number of trees in which the 
 according variable was used for splitting.
}
\references{
\url{www.randomjungle.org
}
\author{
Daniel Schwarz with modifications by Andreas Bender
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{rjungle}}, \code{\link{confusion}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{importance}