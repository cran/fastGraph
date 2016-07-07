\name{plotLine}
\alias{plotLine}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{X-Y Plotting with Simple Linear Regression Line and Equation
}
\description{
The function plots a simple scatter plot, fits the regression line on the scatter plot,
and lists the equation of the fitted regression line as the title.}
\usage{
plotLine(x, y = NULL, data = NULL, xlab = NULL, ylab = NULL, pch = 19, 
         col = c("black", "red"), digits.intercept = NULL, digits.slope = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{The x coordinates of points in the plot.
Alternatively, a single plotting structure or function can be provided.
}
  \item{y}{The y coordinates of points in the plot, optional if \code{x} is an appropriate structure.
}
  \item{data}{A data frame including the \code{x} and \code{y} coordinates.
}
  \item{xlab}{The label of the \code{x} variable.
}
  \item{ylab}{The label of the \code{y} variable.
}
  \item{pch}{The plotting character; i.e., symbol to use.
This can be either a single character or an integer code for one of a set of graphics symbols.
}
  \item{col}{A vector of size two for the color code or name.
The first value is the color of the plotting character,
and the second value is the color of the fitted regression line.
}
  \item{digits.intercept}{The desired number of significant digits for the intercept.
}
  \item{digits.slope}{The desired number of significant digits for the slope.
}
  \item{\dots}{Optional arguments to be passed to the \code{\link[graphics]{plot}} function 
      (see \code{\link[graphics]{par}}).
}
}
% \details{
%%  ~~ If necessary, more details than the description above ~~
%}
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
\author{Steven T. Garren, James Madison University, Harrisonburg, Virginia, USA}
 
\note{
This function \code{plotLine} uses functions \code{\link[graphics]{plot}} and \code{\link[stats]{lm}}.

%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[graphics]{plot}} and \code{\link[stats]{lm}}
}
\examples{
x <- c( 2, 6, 5, -3, 11, 3 )
y <- c( 16, 12, 19, -13, 27, 5 )
plotLine( x, y )

d <- data.frame( x=c( 2, 7, 9, 15, 12 ), y=c( 45, 32, 22, 15, 19 ) )
plotLine( y~x, data=d, col=c("blue","orange") )

plotLine( y~x, data=d, xlab="TIME", ylab="EXPENSE", digits.intercept=3, digits.slope=4 )
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ scatter plot }
\keyword{ simple linear regression }% __ONLY ONE__ keyword per line
