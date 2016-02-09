\name{getMinMax}
\alias{getMinMax}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Finds a Reasonable Domain for Plotting a Graph
}
\description{
This function computes a reasonable domain for plotting one, two, or three distribution functions
by truncating small tail probabilities.  This function also lists the population medians.
}
\usage{
getMinMax(xmin = NULL, xmax = NULL, distA, parmA1 = NULL, parmA2 = NULL, distB = NULL, 
          parmB1 = NULL, parmB2 = NULL, distC = NULL, parmC1 = NULL, parmC2 = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xmin}{
A lower bound, usually set to \code{NULL} during input.
}
  \item{xmax}{
An upper bound, usually set to \code{NULL} during input.
}
  \item{distA}{
Character variable naming the first probability density function (starting with "d")
or cumulative density function (starting with "p").
}
  \item{parmA1}{
The first argument in \code{distA}, excluding the dummy argument.
Alternatively, \code{parmA1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parmA2}{
The second argument in \code{distA}, excluding the dummy argument.
Alternatively, \code{parmA2} may be set to be a vector of arguments, excluding the dummy argument and \code{parmA1}.
}
  \item{distB}{
Character variable naming the second probability density function (starting with "d")
or cumulative density function (starting with "p").
}
  \item{parmB1}{
The first argument in \code{distB}, excluding the dummy argument.
Alternatively, \code{parmB1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parmB2}{
The second argument in \code{distB}, excluding the dummy argument.
Alternatively, \code{parmB2} may be set to be a vector of arguments, excluding the dummy argument and \code{parmB1}.
}
  \item{distC}{
Character variable naming the third probability density function (starting with "d")
or cumulative density function (starting with "p").
}
  \item{parmC1}{
The first argument in \code{distC}, excluding the dummy argument.
Alternatively, \code{parmC1} may be set to be a vector of arguments, excluding the dummy argument.
}
  \item{parmC2}{
The second argument in \code{distC}, excluding the dummy argument.
Alternatively, \code{parmC2} may be set to be a vector of arguments, excluding the dummy argument and \code{parmC1}.
}
}
\details{
This function \code{getMinMax} is automatically called by \code{\link{plotDist}} and \code{\link{shadeDist}},
so the user does not actually need to directly call \code{getMinMax} when
executing \code{\link{plotDist}} and \code{\link{shadeDist}}.
This function by itself does not construct a graph.
}
\value{
\item{xmin}{A reasonable value of a lower bound for the domain of a graph.}
\item{xmax}{A reasonable value of an upper bound for the domain of a graph.}
\item{medianA}{The population median of \code{distA}.}
\item{medianB}{The population median of \code{distB}.}
\item{medianC}{The population median of \code{distC}.}
}
%\references{  
%% ~put references to the literature/web site here ~
%}
\author{
Steven T. Garren, James Madison University, Harrisonburg, Virginia, USA
}
%\note{
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plotDist}} and \code{\link{shadeDist}}
}
\examples{
getMinMax(  , , "dnorm", 20, 5  ) # Normal(mu=20, sigma=5)

# Standard normal, and t with 4 degrees of freedom
getMinMax(  , , "dnorm", 0, 1, "dt", 4, 0 ) 

# Standard normal, central t with 4 d.f., and t with 4 d.f. and non-centrality parmater = 1.2
getMinMax(  , , "dnorm", 0, 1, "dt", 4, 0, "dt", 4, 1.2 ) 

# Force minimum to be -3.
getMinMax( -3, , "dnorm", 0, 1 )

# Force maximum to be 3.
getMinMax( , 3, "dnorm", 0, 1 )

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ probability density function }
