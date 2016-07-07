\name{shadeDist}
\alias{shadeDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Displays Area Under Curve of Probability Density Function
%%  ~~function to do ... ~~
}
\description{
This function plots a probability density function, shades the area under the curve, and computes the probability.
}
\usage{
shadeDist(xshade = NULL, ddist = "dnorm", parm1 = NULL, parm2 = NULL, lower.tail = TRUE,
          xlab=NULL, xmin = NULL, xmax = NULL, xtic = TRUE, digits.prob = 4, 
          digits.xtic = 3, is.discrete = NULL, additional.x.range = NULL, main = NULL, 
          col = c("black", "hotpink"), lwd = 5, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xshade}{A single number or vector of two numbers, denoting values on the x-axis where shading under the curve begins and ends. 
}
  \item{ddist}{Character variable naming the probability density function to be graphed.
May be set to "dprob" for a sample proportion, using the same arguments as "dbinom".
}
  \item{parm1}{The first argument in \code{ddist}, excluding the dummy argument.
For example, if \code{ddist}="dnorm", then \code{parm1} is the \code{mean} from "dnorm".
Alternatively, \code{parm1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parm2}{The second argument in \code{ddist}, excluding the dummy argument.
For example, if \code{ddist}="dnorm", then \code{parm2} is the \code{sd} from "dnorm".
Alternatively, \code{parm2} may be set to be a vector of arguments, excluding both the dummy argument and \code{parm1}.
}
  \item{lower.tail}{
Logical; if \code{TRUE} (default), the lowest region is shaded; otherwise, the next lowest region is shaded.
}
  \item{xlab}{
The label of the \code{x} variable.
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
  \item{is.discrete}{
Logical; indicating whether or not the distribution is discrete.
If \code{is.discrete} is \code{NULL}, then \code{shadeDist} automatically makes
the correct choice for density functions already named in the \code{stats} package.
}
  \item{additional.x.range}{
A vector of two additional x-values for evaluating the function.
This argument would be needed only if the user is dissatified with the domain determined by the function.
This argument is ignored if \code{ddist}="dprob".
}
  \item{main}{
The main title given for the graph.
}
  \item{col}{
A vector of size two, specifying the colors of the density curve and the shading, respectively.
}
  \item{lwd}{
The line width for discrete distributions.
}
 \item{\dots}{Optional arguments to be passed to the \code{\link[graphics]{plot}} function
      (see \code{\link[graphics]{par}}).}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
When illustrating a left-sided p-value or any other left-sided probability,
\code{xshade} should be a single number and set \code{lower.tail=TRUE} (default).
When illustrating a right-sided p-value or any other right-sided probability,
\code{xshade} should be a single number and set \code{lower.tail=FALSE}.
When illustrating a two-sided p-value or any other two-sided probability,
\code{xshade} should be a vector of two numbers and set \code{lower.tail=TRUE} (default).
When illustrating the complement of a two-sided p-value or the complement of any other two-sided probability,
\code{xshade} should be a vector of two numbers and set \code{lower.tail=FALSE}.
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
This function \code{shadeDist} calls functions \code{\link{getMinMax}},
\code{\link[graphics]{plot}}, and \code{\link[graphics]{curve}}.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{plotDist}} and \code{\link{shadePhat}}}
\examples{
shadeDist( 1.96 ) # Shows P(Z<1.96) where Z ~ N(0,1)
shadeDist( 1.96, "dnorm", 0, 1 ) # Same as above.

shadeDist( 1.96, lower.tail = FALSE ) # Shows P(Z>1.96) where Z ~ N(0,1)

shadeDist( c( 40, 60 ), , 50, 10, lower.tail = FALSE ) # Shows P(40<X<60) where X~N(mu=50,sigma=10)

# Tail probabilities.
shadeDist( c( 40, 60 ), "dnorm", 50, 10, col=c("purple", "lightgreen") ) 

shadeDist( 5.8, "dchisq", 4, lower.tail = FALSE ) # Chi-squared distribution with 4 d.f.

shadeDist( c( -1.3, 1.3 ), "dt", 13 ) # t with 13 d.f.

shadeDist( 1.73, "dt", 15, lower.tail = FALSE, col=c("blue", "red") ) # t with 15 d.f.

shadeDist( 1.73, "dt", 15, 3, lower.tail = FALSE ) # t with 15 d.f. and non-centrality parameter=3

# P(X>6) where X~Poisson(mu=3.2)
shadeDist( 6, "dpois", 3.2, lower.tail = FALSE, col=c("brown", "yellow") ) 

shadeDist( c( 2, 5 ), "dbinom", 10, 0.4 ) # Binomial(n=10, p=0.4) probabilities

# Probabilities for sample proportion, phat = X/n, where X~Binomial(n=10, p=0.4)
shadeDist( 0.3, "dprop", 20, 0.4 ) 
}

\keyword{ probability density function }
