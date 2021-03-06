\name{travel.time1D}
\alias{travel.time1D}
\alias{many.time1D}


\title{Seismic Travel Time 1D}
\description{
 Travel time from source to reciever in 1D local model.
}
\usage{
travel.time1D(indelta, inhpz, instaz, inlay, ztop, vel)
many.time1D(indelta, inhpz, instaz, inlay, ztop, vel)


}

\arguments{
  \item{indelta}{distance in KM}
  \item{inhpz}{depth of hypocenter, km}
  \item{instaz}{elevation of station}
  \item{inlay}{number of layers}
  \item{ztop}{vector, tops of layers}
  \item{vel}{vector, velocities in layers}
}
\details{
  Uses local  1D velocity model, not appropriate for spherical earth.
  The many.time1D version will take a vector of distances (indelta)
  and either one station elevation or a vector.

  The station elevation should be referenced to the top of the velocity
  model, not necessarily sea level.  Usually this is set to zero
  and a station correction is used to take into account the
  topographic and other geologic effects.
  
}
\value{
  list:
\item{dtdr}{derivative of t   w.r.t. horizontal distance}
\item{dtdz}{derivative of t  w.r.t. z, depth}
\item{angle}{incidence angle, degrees}
\item{tt}{travel time, s}
     
}

\author{Jonathan M. Lees<jonathan.lees.edu>}

\seealso{Ray.time1D, Get1Dvel}
\examples{


data(VELMOD1D)

v <- VELMOD1D

tees <- travel.time1D(23, 7, 0, length(v$zs) , v$zp , v$vp)

print(tees)

}

\keyword{misc}
