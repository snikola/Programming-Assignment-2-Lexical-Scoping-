## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

i <- NULL

    ## setting matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ## getting the matrix
    get <- function() {
    	## Return value
    	m
    }

    ## setting the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## getting the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}




cacheSolve <- function(x, ...) {
    
## m is the inverse of 'x'
    m <- x$getInverse()

       if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Getting the matrix from object
    data <- x$get()

    ## Calculate the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m    
}
