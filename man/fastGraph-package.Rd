\name{fastGraph-package}
\alias{fastGraph-package}
\alias{fastGraph}
\docType{package}
\title{Fast Drawing and Shading of Graphs of Statistical Distributions
}
\description{Provides functionality to produce graphs of probability density functions and cumulative distribution functions with few keystrokes, allows shading under the curve of the probability density function to illustrate concepts such as p-values and critical values, and fits a simple linear regression line on a scatter plot with the equation as the main title.
}
\details{
\tabular{ll}{
Package: \tab fastGraph\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2019-06-24\cr
License: \tab GPL-3\cr
}

\itemize{
\item{\code{\link{plotDist}} draws as many as three probability density functions
or cumulative distribution functions on the same graph.}
\item{\code{\link{shadeDist}} draws a probability density function, shades
in area under the curve, and lists the probability in the title of the graph.}
\item{\code{\link{shadePhat}} is similar to \code{\link{shadeDist}} but
considers the distribution of only the sample proportion.}
\item{\code{\link{plotLine}} performs a simple scatter plot, fits the linear regression line,
and states the equation of the line in the title.}
\item{\code{\link{getMinMax}} is called by both \code{\link{plotDist}} and \code{\link{shadeDist}} 
for determining a reasonable domain for plotting the graph.}
}
}
\author{Steven T. Garren, James Madison University, Harrisonburg, Virginia, USA;
GARRENST AT JMU DOT EDU
}
%\references{
%}
\keyword{ plot }
\seealso{\code{\link[graphics]{plot}} and \code{\link[stats]{lm}}}
\examples{
# Plots cumulative distribution functions of a standard normal, a central t with 4 d.f., 
# and a t with 4 d.f. and non-centrality parameter = 1.3 in black, red, and green, respectively. 
plotDist( "pnorm", 0, 1, "pt", 4, 0, "pt", 4, 1.3 )

# Plots Binomial(n=100,p) density functions, where p=0.4, 0.5, and 0.7
# in colors black, red, and green, respectively.
plotDist( "dbinom", 100, 0.4, "dbinom", 100, 0.5, "dbinom", 100, 0.7 ) 

# Shows P(|T| > 1.8), where T is t distributed with 9 d.f.
shadeDist( c(-1.8, 1.8), "dt", 9 ) 

# Shows P(X > 8), where X ~ Poisson(mean=6).
shadeDist( 8, "dpois", 6, lower.tail=FALSE, col=c("purple","green") ) 

# Graphs line of simple linear regression model and states equation.
plotLine( c(-5,6,2,9,-11), c(-7,17,21,29,8), digits.intercept=3, digits.slope=4 )  

# Finds a reasonable domain when plotting a Normal(mean=20, sd=5) density function.
getMinMax( , , "dnorm", 20, 5 )
}
