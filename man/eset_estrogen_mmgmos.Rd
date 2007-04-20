\name{eset_estrogen_mmgmos}
\alias{eset_estrogen_mmgmos}
\docType{data}
\title{The data from the estrogen package processed using the multi-mgMOS algorithm}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code (note this could take a long time to run):

    \preformatted{
		data(affybatch.estrogen)
		eset_estrogen_mmgmos <- mmgmos(affybatch.estrogen)
	}
}
\usage{data(eset_estrogen_mmgmos)}
\format{
  An \code{\link[puma:exprReslt-class]{exprReslt}} object containing expression levels and standard errors for 8 HG\_U95Av2 arrays, in a 2 x 2 factorial design, with 2 replicates for each combination of factors. The factors are estrogen (absent of present) and time.h (10 or 48).
}
\seealso{
	\code{\link[pumadata]{affybatch.estrogen}}
	\code{\link[pumadata]{eset_estrogen_rma}}
}
\examples{
data(eset_estrogen_mmgmos)
show(eset_estrogen_mmgmos)
exprs(eset_estrogen_mmgmos)[1:3,1:3]
assayDataElement(eset_estrogen_mmgmos,"se.exprs")[1:3,1:3]
}
\keyword{datasets}
