## The 2 function will cache the inverse of the matrix

## This function will create listing contains in a function

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


## This function will return an inverse of the matrix 

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
