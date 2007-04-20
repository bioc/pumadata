\name{pumapca_estrogen}
\alias{pumapca_estrogen}
\docType{data}
\title{The data from the estrogen package processed using the pumaPCA algorithm}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code (note this could take a long time to run):

    \preformatted{
		data(eset_estrogen_mmgmos)
		pumapca_estrogen <- pumaPCA(eset_estrogen_mmgmos)
	}
}
\usage{data(pumapca_estrogen)}
\format{
  An \code{\link[puma:pumaPCARes-class]{pumaPCARes}} object containing principal components (created using pumaPCA) of 8 HG\_U95Av2 arrays, in a 2 x 2 factorial design, with 2 replicates for each combination of factors. The factors are estrogen (absent of present) and time.h (10 or 48).
}
\seealso{\code{\link[pumadata]{eset_estrogen_mmgmos}}}
\examples{
data(pumapca_estrogen)
plot(pumapca_estrogen,legend1pos="right",legend2pos="top")
}
\keyword{datasets}
