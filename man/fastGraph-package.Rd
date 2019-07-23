\name{fastGraph-package}
\alias{fastGraph}
\docType{package}
\title{Fast Drawing and Shading of Graphs of Statistical Distributions
}
\description{Provides functionality to produce graphs of probability density functions and cumulative distribution functions with few keystrokes, allows shading under the curve of the probability density function to illustrate concepts such as p-values and critical values, and fits a simple linear regression line on a scatter plot with the equation as the main title.
}
\details{
\itemize{
\item{\code{\link{getMinMax}} is called by both \code{\link{plotDist}} and \code{\link{shadeDist}} 
for determining a reasonable domain for plotting the graph.}
\item{\code{\link{plotDist}} draws as many as three probability density functions
or cumulative distribution functions on the same graph.}
\item{\code{\link{plotLine}} performs a simple scatter plot, fits the linear regression line,
and states the equation of the line in the title.}
\item{\code{\link{shadeDist}} draws a probability density function, shades
in area under the curve, and lists the probability in the title of the graph.}
\item{\code{\link{shadePhat}} is similar to \code{\link{shadeDist}} but
considers the distribution of only the sample proportion.}
}
}
\author{Steven T. Garren, James Madison University, Harrisonburg, Virginia, USA}
%\references{
%}
\keyword{ plot }
\seealso{Functions \code{\link[graphics]{plot}} and \code{\link[stats]{lm}}, and \emph{R}-package \code{\link[jmuOutlier]{jmuOutlier}}.}
\examples{
par( mfrow=c(2,2) )

# Shows P(|Z| < 1.96), where Z is standard normal.
shadeDist( c(-1,1)*qnorm(0.975), lower.tail=FALSE )

# Shows P(|T| > 1.7), where T is t distributed with 19 d.f.
shadeDist( c(-1.7, 1.7), "dt", 19, col=c("blue", "hotpink") )

# Plots distribution of Poisson(mu=6).
plotDist( "dpois", 6, xmin=0, col="seagreen", main = expression(paste("Poisson(",mu,"=6)")) )

# Graphs line of simple linear regression model and states equation.
plotLine( c(-5,6,2,9,-11), c(-7,17,21,29,8), digits.intercept=3, digits.slope=4 )

par( mfrow=c(1,1) )
}
