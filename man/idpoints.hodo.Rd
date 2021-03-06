\name{idpoints.hodo}
\alias{idpoints.hodo}

\title{ID points on Hodogram}
\description{
 Identification of points on a hodogram
}
\usage{
idpoints.hodo(nbaz, sx, X, Y)
}

\arguments{
  \item{nbaz}{matrix 3 by n}
  \item{sx}{x vector }
  \item{X}{x-coordinates to id}
  \item{Y}{y-coordinates to id}
}
\details{
 Used in conjunction with other interative plots.
}

\author{Jonathan M. Lees<jonathan.lees.edu>}

\seealso{PMOT.drive}
\examples{


data("GH")
sel<- which(GH$STNS == "CE1")


temp <- cbind(GH$JSTR[[sel[1]]][1168:1500],
 GH$JSTR[[sel[2]]][1168:1500], GH$JSTR[[sel[3]]][1168:1500])
dt <-  GH$dt[ sel[1] ]
STAMP <- "GH"

PMOT.drive(temp, dt,
 pmolabs = c("Vertical", "North", "East"), STAMP = STAMP)


## ids <- idpoints.hodo(temp, sx, zloc$x[sn1], zloc$y[sn1])

}

\keyword{misc}
\keyword{iplot}