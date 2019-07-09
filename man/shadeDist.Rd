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
          col = c("black", "red"), lwd = 3, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xshade}{A single number or vector of two numbers, denoting values on the x-axis where shading under the curve begins and ends. 
However, if \code{NULL}, no shading occurs.
}
  \item{ddist}{Character variable naming the probability density function to be graphed.
May be set to "dprop" for a sample proportion, using the same arguments as \code{\link[stats]{dbinom}}.
}
  \item{parm1}{The first argument in \code{ddist}, excluding the dummy argument.
For example, if \code{ddist}="\code{\link{dnorm}}", then \code{parm1} is the \code{mean} from "\code{\link{dnorm}}".
Alternatively, \code{parm1} may be set to be a vector of arguments, excluding the dummy argument.
However, if \code{ddist}="dprop", then \code{parm1} should be set to the \code{size} in \code{\link[stats]{dbinom}}.
}
  \item{parm2}{The second argument in \code{ddist}, excluding the dummy argument.
For example, if \code{ddist}="\code{\link{dnorm}}", then \code{parm2} is the \code{sd} from "\code{\link{dnorm}}".
Alternatively, \code{parm2} may be set to be a vector of arguments, excluding both the dummy argument and \code{parm1}.
However, if \code{ddist}="dprop", then \code{parm2} should be set to the \code{prob} in \code{\link[stats]{dbinom}}.
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
This argument would be needed only if the user is dissatisfied with the domain determined by the function.
This argument is ignored if \code{ddist}="dprop".
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
The numeric value of the population median typically is shown on the x-axis when \code{xshade} is not \code{NULL}, 
provided that this number actually fits on the x-axis; see description for argument \code{xtic} above.\\
This function \code{shadeDist} calls functions \code{\link{getMinMax}},
\code{\link[graphics]{plot}}, and \code{\link[graphics]{curve}}.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{plotDist}} and \code{\link{shadePhat}}}
\examples{
mfrow.old = par()$mfrow ;   par( mfrow = c( 3, 3 ) )

shadeDist( 1.96, "dnorm", 0, 1 ) # P(Z<1.96) where Z ~ N(0,1)
shadeDist( 1.96, lower.tail=FALSE ) # P(Z>1.96) where Z ~ N(0,1)

# P(40<X<60) where X~N(mu=50,sigma=10)
shadeDist( c( 40, 60 ), , 50, 10, lower.tail=FALSE, col=c("black", "lightblue") ) 

shadeDist( c( 40, 60 ), "dnorm", 50, 10, col=c("purple", "lightgreen") ) 
shadeDist( 6.8, "dchisq", 4, lower.tail=FALSE ) # Chi-squared distribution with 4 d.f.
shadeDist( c( -1.3, 1.3 ), "dt", 13 ) # t with 13 d.f.
shadeDist( 1.19, "dt", 15, 3, lower.tail=FALSE ) # t with 15 d.f. and non-centrality parameter=3
shadeDist( 2.1, "df", 4, 25, lower.tail=FALSE, col=c("hotpink","turquoise") ) # F with 4 and 25 d.f.
shadeDist( 0.6, "dprop", 20, 0.7, xmin=0.4 ) # Probability for sample proportion with n=20 and p=0.7

par( mfrow = mfrow.old )
}

\keyword{ probability density function }
