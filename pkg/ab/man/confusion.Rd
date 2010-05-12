\name{confusion}
\alias{confusion}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
rjungle
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
confusion(rj, confusionTable = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rj}{
%%     ~~Describe \code{rj} here~~
}
  \item{confusionTable}{
%%     ~~Describe \code{confusionTable} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(rj,
		confusionTable = FALSE, #if TRUE then show file *.confusion2
		...) {
	if (!inherits(rj, "rjungle"))
		stop("data argument should be rjungle-class")
	fileName = paste(rj@tmpFile, ".confusion", sep = "")
	whatHeader = TRUE
	if (rj@treeType != 3 & rj@treeType != 4)  {
		if (confusionTable) {
			whatHeader = FALSE
			fileName = paste(rj@tmpFile, ".confusion2", sep = "")
		}
	}
	if (!file.exists(fileName))
		stop(paste("no importance file exists.", fileName))
	ret = NULL
	if (whatHeader){
		con <- file(fileName, "r", blocking = FALSE)
		ret2 = readLines(con) # empty
		close(con)
		cat(paste(ret2, "\n"))
	} else
		ret = read.table(fileName, header = TRUE)
	return(ret)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ confusion}% __ONLY ONE__ keyword per line
