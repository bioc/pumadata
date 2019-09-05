\name{affybatch.estrogen}
\alias{affybatch.estrogen}
\docType{data}
\title{The data from the estrogen package as an AffyBatch object}
\description{
    This data is taken from the \pkg{estrogen} package. It was created to be used in the vignette for the \pkg{puma} pacakge. It can be produced using the following code:

    \preformatted{
		library(estrogen)
		datadir <- file.path(.find.package("estrogen"),"extdata") 
		estrogenFilenames <- c("low10-1.cel","low10-2.cel","high10-1.cel","high10-2.cel"
		,	"low48-1.cel","low48-2.cel","high48-1.cel","high48-2.cel")
		affybatch.estrogen <- ReadAffy(
			filenames=estrogenFilenames
		,	celfile.path=datadir
		)
		pData(affybatch.estrogen) <- data.frame(
		"estrogen"=c("absent","absent","present","present"
			,"absent","absent","present","present")
			,	"time.h"=c("10","10","10","10","48","48","48","48")
			,	row.names=rownames(pData(affybatch.estrogen))
		)
	}
}
\usage{data(affybatch.estrogen)}
\format{
  An \code{\link[affy:AffyBatch-class]{AffyBatch}} object containing 8 HG\_U95Av2 arrays, in a 2 x 2 factorial design, with 2 replicates for each combination of factors. The factors are estrogen (absent of present) and time.h (10 or 48).
}
\keyword{datasets}
