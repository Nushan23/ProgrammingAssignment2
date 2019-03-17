## Finally need to create two functions that cache the inverse of a matrix.

## makeCacheMatrix make a special "matrix" object which can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y) {
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) n <<- solveMatrix
  getInverse <- function() n
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## cacheSolve calculate the inverse of the special "matrix" Refunded by above function.

cacheSolve <- function(x,...) {
  n <- x$getInverse()
  if(!is.null(n)){
    message("getting cached data")
    return(n)
  }
  data <- x$get()
  n <- solve(data,...)
  x$setInverse(n)
  n      
}
