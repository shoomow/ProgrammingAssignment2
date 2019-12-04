## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   sq <- sqrt(length(x))

  if ((sq - floor(sq)) == 0) {
    x <- matrix(x,nrow = sq,ncol = sq)
    x
  } else {
    message("Sorry, but your matrix cannot be inverted")
  }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
