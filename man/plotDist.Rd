\name{plotDist}
\alias{plotDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plotting of Statistical Distributions
}
\description{
This function plots as many as three probability density functions
and cumulative distribution functions on the same graph using just one command,
where the domain of the graph need not be specified by the user.
}
\usage{
plotDist(distA = "dnorm", parmA1 = NULL, parmA2 = NULL, distB = NULL, parmB1 = NULL, 
         parmB2 = NULL, distC = NULL, parmC1 = NULL, parmC2 = NULL, xlab = NULL, 
         xmin = NULL, xmax = NULL, col = c("black", "red", "darkgreen"), 
         is.discrete = NULL, additional.x.range = NULL, lwd = 3, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{distA}{
Character variable naming the first probability density function (starting with "d") 
or cumulative density function (starting with "p") to be graphed.
May be set to "dprop" for a sample proportion, in which case only one distribution (i.e., \code{distA}) may be graphed,
using the same arguments as \code{\link[stats]{dbinom}}. 
}
  \item{parmA1}{
The first argument in \code{distA}, excluding the dummy argument.
For example, if \code{distA}="\code{\link{dnorm}}", then \code{parmA1} is the \code{mean} from "\code{\link{dnorm}}".
Alternatively, \code{parmA1} may be set to be a vector of arguments, excluding the dummy argument.
However, if \code{distA}="dprop", then \code{parmA1} should be set to the \code{size} in \code{\link[stats]{dbinom}}.
}
  \item{parmA2}{
The second argument in \code{distA}, excluding the dummy argument.
For example, if \code{distA}="\code{\link{dnorm}}", then \code{parmA2} is the \code{sd} from "\code{\link{dnorm}}".
Alternatively, \code{parmA2} may be set to be a vector of arguments, excluding both the dummy argument and \code{parmA1}.
However, if \code{distA}="dprop", then \code{parmA2} should be set to the \code{prob} in \code{\link[stats]{dbinom}}.
}
  \item{distB}{
Character variable naming the second probability density function (starting with "d") 
or cumulative density function (starting with "p") to be graphed.
}
  \item{parmB1}{
The first argument in \code{distB}, excluding the dummy argument.
Alternatively, \code{parmB1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parmB2}{
The second argument in \code{distB}, excluding the dummy argument.
Alternatively, \code{parmB1} may be set to be a vector of arguments, excluding both the dummy argument and \code{parmB1}.
}
  \item{distC}{
Character variable naming the third probability density function (starting with "d") 
or cumulative density function (starting with "p") to be graphed.
}
  \item{parmC1}{
The first argument in \code{distC}, excluding the dummy argument.
Alternatively, \code{parmC1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parmC2}{
The second argument in \code{distC}, excluding the dummy argument.
Alternatively, \code{parmC2} may be set to be a vector of arguments, excluding both the dummy argument and \code{parmC1}.
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
  \item{col}{
A vector specifying the colors of \code{distA}, \code{distB}, and \code{distC}, respectively.
}
  \item{is.discrete}{
A vector with 1, 2, or 3 logical values, indicating whether or not \code{distA}, \code{distB}, and \code{distC}
are discrete.  For built-in density functions, such as \code{dbinom}, \code{pbinom}, \code{dgeom}, \code{pgeom},
\code{dhyper}, \code{phyper}, \code{dpois}, \code{ppois}, \code{dnbinom}, and \code{pnbinom}, 
this argument \code{is.discrete} can be set to \code{NULL}, which is the default.
}
  \item{additional.x.range}{
A vector of two additional x-values for evaluating the function.
This argument would be needed only if the user is dissatisfied with the domain determined by the function.
}
  \item{lwd}{
The line width for discrete distributions.
}
  \item{\dots}{Optional arguments to be passed to the \code{\link[graphics]{plot}} function
      (see \code{\link[graphics]{par}}).}
}
\details{
If only one graph is to be plotted, then use \code{distA}.
If only two graphs are to be plotted, then use \code{distA} and \code{distB}.

The arguments in \code{plotDist} are typically entered as first distribution plus two parameters, 
second distribution plus two parameters, and third distribution plus two parameters.
If only one parameter of the distribution is needed, then the second parameter can be left as 
the default of \code{NULL}.
If three or more parameters of the distribution are needed, then the first parameter can be assigned
to be a vector consisting of all of the parameters.

The default value of \code{distA} is "\code{\link{dnorm}}"; i.e., for plotting the normal distribution.

The default values of all of the arguments following \code{parmC2} usually are sufficient.
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
This function \code{plotDist} calls functions \code{\link{getMinMax}},
\code{\link[graphics]{plot}}, and \code{\link[graphics]{curve}}.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{shadeDist}}, \code{\link{shadePhat}}, \code{\link[graphics]{plot}}, and
\code{\link{getMinMax}}
}
\examples{
mfrow.old = par()$mfrow ;   par( mfrow = c( 2, 2 ) )

# Plots standard normal density in black, t density with 3 d.f. in red, and
# non-central t density with 3 d.f. and non-centrality parameter=1.4 in green.
plotDist( "dnorm", 0, 1, "dt", 3, 0, "dt", 3, 1.4, 
          main=expression(paste("Standard Normal,", T[3],", and ", T[paste(3,",",1.4)], sep="")) ) 

# Plots normal approximation to Binomial(n=100, p=0.4).
plotDist( , 40, sqrt(100*0.4*0.6), "dbinom", 100, 0.4, col=c("blue", "hotpink"), 
   main = "Normal approximation to Binomial" )

# Plots cumulative normal and Cauchy distribution functions.
plotDist( "pnorm", 50, 10, "pcauchy", 50, 10, col=c("purple","orange"), 
   main = "Normal and Cauchy" )

# Plots sample proportion by calling function shadePhat.
plotDist( "dprop", 15, 0.3, col="turquoise", main = "Sample proportion" )

par( mfrow = mfrow.old )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ plot }% __ONLY ONE__ keyword per line
\keyword{ probability density function }% __ONLY ONE__ keyword per line
\keyword{ cumulative distribution function }% 
