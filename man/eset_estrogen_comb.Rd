\name{eset_estrogen_comb}
\alias{eset_estrogen_comb}
\docType{data}
\title{The data from the estrogen package processed using the multi-mgMOS and PUMAcomb algorithms}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code (note this could take a long time to run):

    \preformatted{
		data(eset_estrogen_mmgmos)
		eset_estrogen_mmgmos_normd <- PUMAnormalize(eset_estrogen_mmgmos, "median")
		eset_estrogen_comb <- PUMAcomb(eset_estrogen_mmgmos_normd)
	}
}
\usage{data(eset_estrogen_comb)}
\format{
  An \code{\link[Biobase:class.ExpressionSet]{ExpressionSet}} object containing the expression levels and standard errors from combining the replicates for each combination of levels of factors from 8 HG\_U95Av2 arrays, in a 2 x 2 factorial design, with 2 replicates for each combination of factors. The factors are estrogen (absent of present) and time.h (10 or 48).
}
\seealso{\code{\link[pumadata]{eset_estrogen_mmgmos}}}
\examples{
data(eset_estrogen_comb)
exprs(eset_estrogen_comb)[1:3,1:3]
assayDataElement(eset_estrogen_comb,"se.exprs")[1:3,1:3]
}
\keyword{datasets}
