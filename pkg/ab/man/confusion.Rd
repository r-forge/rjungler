\name{confusion}
\alias{confusion}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
rjungle
}
\description{
In case of regression tasks confusion returns the total sum of squares (SS), 
the SS of residuals and predictor, the prediction accuracy estimate and the 
and the error estimate.
}
\usage{
confusion(rj, printOnly = FALSE, confusionTable = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rj}{
    An object of class \code{rjungle}.
}
  \item{printOnly}{
    If \code{TRUE}, confusion information is printed to the screen 
    when rjungle was used for regression tasks. If \code{FALSE} (default), 
    A \code{vector} with 5 elemnts is returned.
  
}
  \item{confusionTable}{
    The confusion table in case of classification tasks.
    
}
  \item{\dots}{
    Further arguments; not used at the moment.
}
}
\details{
 This version of the \code{confusion} function was modified by Andreas Bender
 for purposes of his bachelor thesis.
}
\value{
    For regression tasks either \code{NULL} or a \code{vector} with 
    elements \code{SS_Residual}, \code{SS_Total}, 
    \code{SS_Predictor}=\code{SS_Total - SS_Residual},
    \code{Accuracy Estimate}=\code{SS_Predictor/SS_Total} 
    and \code{Error Estimate}=\code{1 - Accuracy Estimate}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Daniel F. Schwarz with modifications by Andreas Bender
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rjungle}}, \code{\link{importance}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{confusion}% __ONLY ONE__ keyword per line
