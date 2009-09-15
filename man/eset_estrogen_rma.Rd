\name{eset_estrogen_rma}
\alias{eset_estrogen_rma}
\docType{data}
\title{The data from the estrogen package processed using the RMA algorithm}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code:

    \preformatted{
		data(affybatch.estrogen)
		eset_estrogen_mmgmos <- rma(affybatch.estrogen)
	}
}
\usage{data(eset_estrogen_rma)}
\format{
  An \code{\link[Biobase:class.ExpressionSet]{ExpressionSet}} object
  taining expression levels for 8 HG\_U95Av2 arrays, in
  a 2 x 2 factorial design, with 2 replicates for each
  combination of factors. The factors are estrogen (absent
  of present) and time.h (10 or 48). 
}
\seealso{
	\code{\link[pumadata]{affybatch.estrogen}}
	\code{\link[pumadata]{eset_estrogen_mmgmos}}
}
\examples{
data(eset_estrogen_rma)
show(eset_estrogen_rma)
exprs(eset_estrogen_rma)[1:3,1:3]
assayDataElement(eset_estrogen_rma,"se.exprs")[1:3,1:3]
}
\keyword{datasets}
