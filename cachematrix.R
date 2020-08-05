## Put comments here that give an overall description of what your
## functions do

## My function creates an object "Matrix" which has a variable called myinv assigned 
## to a null object. Overall the function gets, sets and gets the value of an inverse matrix. 
makeCacheMatrix <- function(x = matrix()) {
  myinv<-NULL
  set <- function(y){
    x<<-y
    myinv<<-NULL
  }
  get <- function() (x)
  setInverse <- function(inverse) (myinv<<- inverse)
  getInverse <- function() (myinv)
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
 
}


##This function get the value of the matrix solves the inverse of the matrix then
## returns it
cacheSolve <- function(x, ...) {
  myinv <-x$getInverse()
  if(!is.null(myinv)) {
    message("getting cached data")
    return(myinv)
  }
  mat <- x$get()
  myinv <-solve(mat, ...)
  x$setInverse(myinv)
  myinv
        ## Return a matrix that is the inverse of 'x'
}
