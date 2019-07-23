\name{shadePhat}
\alias{shadePhat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Displays Cumulative Probability of a Sample Proportion
%%  ~~function to do ... ~~
}
\description{
This function plots the probability density function of a sample proportion, shades the lines denoting probability, 
and computes the cumulative probability.
}
\usage{
shadePhat(xshade = NULL, size = 1, prob = 0.5, lower.tail = TRUE, xmin = NULL, 
          xmax = NULL, xlab = expression(hat(p)), xtic = TRUE, digits.prob = 4, 
          digits.xtic = 3, main = NULL, col = c("black", "red"), lwd = 2, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xshade}{
A single number or vector of two numbers, denoting values on the x-axis where shading under the curve begins and ends.
However, if \code{NULL}, no shading occurs.
}
  \item{size}{
Number of Bernoulli trials (one or more).
}
  \item{prob}{
Probability of Bernoulli success.
}
  \item{lower.tail}{
Logical; if \code{TRUE} (default), the lowest region is shaded; otherwise, the next lowest region is shaded.
}
  \item{xlab}{
The label given to the sample proportion on the x-axis.
}
  \item{xmin}{
The minimum x-value to be graphed.
}
  \item{xmax}{
The maximum x-value to be graphed.
}
  \item{xtic}{
Logical or a vector of numbers.
If \code{xtic} is \code{TRUE} (default), then the numbers on the x-axis include the median and \code{xshade}.
If \code{xtic} is \code{TRUE}, then the default numbers from \code{\link[graphics]{plot}} are listed on the x-axis.
If \code{xtic} is a vector of numbers, then these numbers are listed on the x-axis.
}
  \item{digits.prob}{
The number of significant digits listed in the probability.
}
  \item{digits.xtic}{
The number of significant digits listed on the x-axis.
}
  \item{main}{
The main title given for the graph.
}
  \item{col}{
A vector of size two, specifying the colors of the density curve and the shading, respectively.
}
  \item{lwd}{
The line width illustrating the discrete probabilities.
}
 \item{\dots}{Optional arguments to be passed to the \code{\link[graphics]{plot}} function
      (see \code{\link[graphics]{par}}).}
}
\details{
When illustrating a left-sided p-value or any other left-sided probability,
\code{xshade} should be a single number and set \code{lower.tail=TRUE} (default).
When illustrating a right-sided p-value or any other right-sided probability,
\code{xshade} should be a single number and set \code{lower.tail=FALSE}.
When illustrating a two-sided p-value or any other two-sided probability,
\code{xshade} should be a vector of two numbers and set \code{lower.tail=TRUE} (default).
When illustrating the complement of a two-sided p-value or the complement of any other two-sided probability,
\code{xshade} should be a vector of two numbers and set \code{lower.tail=FALSE}.

This function \code{shadePhat} can be executed directly or indirectly via \code{\link{shadeDist}}.
}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Steven T. Garren, James Madison University, Harrisonburg, Virginia, USA
}
\note{
This function \code{shadePhat} calls functions 
\code{\link[graphics]{plot}} and \code{\link[graphics]{curve}}.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{shadeDist}} and \code{\link{plotDist}}.}
\examples{
par( mfrow=c(3,2) )

shadePhat( 0.3, 20, 0.4 )

shadePhat( 0.3, 20, 0.4, lower.tail=FALSE )

shadePhat( c(0.65, 0.75), 30, 0.7, lower.tail=FALSE, xmin=0.4, xmax=1 )

shadePhat( c(0.65, 0.75), 30, 0.7, xmin=0.4, xmax=1, col=c("purple","orange") )

shadePhat( c(0.3, 0.4), 50, 0.35, xmin=0.1, xmax=0.6, col=c("blue","lightgreen") )

shadePhat( NULL, 10, 0.6, main = "Sample proportion" )

par( mfrow=c(1,1) )
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ probability density function }
\keyword{ sample proportion }% __ONLY ONE__ keyword per line
