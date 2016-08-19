\name{addVo}
\alias{addVo}
\title{ Add Volume to Chart }
\description{
Add Volume of a series, if available, to the current chart.
This is the default TA argument for all charting functions.
}
\usage{
addVo(log.scale=FALSE)
}
\arguments{
  \item{log.scale}{ use log-scale for volume.It is not available 
  in this version temporarily. See Details. }
}
\details{
Add volume bars to current chart if data object contains
appropriate volume column. 

log.scale will transform the series via standard R graphics mechanisms. 
Since \code{\link{chartSeries}} no longer uses base R graphic functions 
ands is now a wrapper for\code{\link{chart_Series}}, log.scale is not 
available until we figure out a way to implement it.
}
\value{
Volume will be draw in a new frame on the current
chart.  A lchob object will be returned silently.
}
\author{ Jeffrey A. Ryan }
\seealso{ \code{\link{addTA}}}
\examples{
\dontrun{
addVo()
}
}
\keyword{ utilities }
