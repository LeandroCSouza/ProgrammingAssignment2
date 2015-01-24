## Put comments here that give an overall description of what your
## functions do

## Funtion to cache the matrix and make its invertion

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse)m<<-inverse
  getInverse<-function()m
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
m<-x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  m<-solve(x$get())
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
