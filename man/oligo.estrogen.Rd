\name{oligo.estrogen}
\alias{oligo.estrogen}
\docType{data}
\title{The data from the estrogen package as an ExpressionFeatureSet object}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code:

    \preformatted{
		library(estrogen)
		datadir <- file.path(find.package("estrogen"),"extdata") 
		estrogenFilenames <- c("low10-1.cel","low10-2.cel","high10-1.cel","high10-2.cel"
		,	"low48-1.cel","low48-2.cel","high48-1.cel","high48-2.cel")
                    setwd(datadir)
		oligo.estrogen <-read.celfiles(
			filenames=estrogenFilenames
		)
		pData(oligo.estrogen) <- data.frame(
		"estrogen"=c("absent","absent","present","present"
			,"absent","absent","present","present")
			,	"time.h"=c("10","10","10","10","48","48","48","48")
			,	row.names=rownames(pData(oligo.estrogen))
		)
	}
}
\usage{data(oligo.estrogen)}
\format{
  An \code{\link[oligoClasses:FeatureSet]{ExpressionFeatureSet}} object containing 8 HG\_U95Av2 arrays, in a 2 x 2 factorial design, with 2 replicates for each combination of factors. The factors are estrogen (absent of present) and time.h (10 or 48).
}
\keyword{datasets}
