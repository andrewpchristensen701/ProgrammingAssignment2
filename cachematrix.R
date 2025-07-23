## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y){
    x <<- y
    z <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) z <<- inverse
  getInverse <- function() z
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  z <- x$getInverse()
  if(!is.null(z)){
    message("Getting Data")
    return(z)
  }
  mat <- x$get()
  z <- solve(mat,...)
  x$setInverse(z)
  z
}
