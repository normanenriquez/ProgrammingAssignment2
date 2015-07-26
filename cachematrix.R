## The 2 function will cache the inverse of the matrix

## This function will create listing contains in a function
## - set and get the value of the matrix
## - set and get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    
    setMatrix <- function(y) {
        x <<- y
        inverseMatrix <<- NULL
    }
    
    getMatrix <- function() x
    setinverse <- function(inverse) inverseMatrix <<- inverse
    getinverse <- function() inverseMatrix
    
    list(set=setMatrix, get=getMatrix, setinverse=setinverse, getinverse=getinverse)
}


## This function will return an inverse of the matrix. It will check if the inverse matrix has been computer.
## If it's computed, it will get the result and skips the computation. If it's not computed, it will sets the value in the
## cache thru setinvere function.

cacheSolve <- function(a, ...) {
    inverseMatrix <- x$getinverse()
    
    if(!is.null(inverseMatrix)) {
        message("getting cached data.")
        return(inverseMatrix)
    }
    
    data <- x$get()
    inverseMatrix <- solve(data)
   
    x$setinverse(inverseMatrix)
    
    inverseMatrix
}
