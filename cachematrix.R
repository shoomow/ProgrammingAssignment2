##  So, this is basically a copypaste of the 'special vector' example, 
##  but adapted to return an inverted matrix for final output.


makeCacheMatrix <- function(x = matrix()) {
mtrx <- NULL

set <- function(a){                                ## This funciton sets the value of the matrix, which was
x <<- a                                          ## which was previously set to NULL and probably makes it a global variable.
##mtrx <<- NULL                                  ## I switched off this line because it doesn't seem to matter one way or another.
}

get <- function() x                                ## This function gets the initial matrix
setinv <- function(inverse) mtrx <<- inverse       ## This function calculates an inverse of the matrix (using matlib package) also making it global
getinv <- function() mtrx                          ## This function gets the inverse
list (set = set, get = get, setinv = setinv, getinv = getinv)
}

##  This is a copypates of the second part of the example, also adapted to the task.
##

cacheSolve <- function(x, ...) {
mtrx <- x$getinv()                                ##  Gets the inverse of the matrix from prev. function
if(!is.null(mtrx)){                               ##  Checks if it is stored in the cache and returns stored value if true
message("getting cached data")
return(mtrx)
}
data <- x$get()                                   ##  If there is no stored value, it takes the value of the matrix...
mtrx <- solve(data, ...)                          ##  ... calculates the inverse...
x$setinv(mtrx)                                    ##  ... and assings calculated value to the mtrx variable.
mtrx
}
