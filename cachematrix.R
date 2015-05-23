## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a matrix object which resides in the scope of the function.

makeCacheMatrix <- function(x = matrix()) {
        chacheMatrix <- NULL
        set <- function(y){
                x <<- y
                chacheMatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) chacheMatrix <<- solve
        getInverse <- function() chacheMatrix
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Write a short comment describing this function

## This function goes and samples to see if any cached matrice exists if it does it prints it out, if it does not then it creates a one and caches it.

cacheSolve <- function(x, ...) {
        inversedMatrix <- x$getInverse()
        if(!is.null(inversedMatrix)){
                message("Getting cached data...")
                return(inversedMatrix)
        }
        data <- x$get()
        inversedMatrix <- solve(data, ...)
        x$setInverse(inversedMatrix)
        inversedMatrix
        ## Return a matrix that is the inverse of 'x'
}
