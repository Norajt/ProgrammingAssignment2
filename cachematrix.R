## These functions calculate and store a matrix and its inverse. If a 
## function is called and the data already exists, it will return that
##information without re-calculating. 

## makeCacheMatrix is a function that returns a list of functions.
## These functions are used to manipulate the locally scoped (cached) matrices. 

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	get <- function() x
	set <- function(newMatrix) {
		inverse <<- NULL 
		x <<- newMatrix
	}
	getInverse <- function() inverse
	setInverse <- function(newInverse) {
		inverse <<- newInverse
	}
	list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)	
}


## This function takes as its argument a cached matrix object using
## the function above. The function calculates and stores the inverse
## of the input matrix, if it hasn't already been calculated. 

cacheSolve <- function(x, ...) {
	inv <- x$getInverse() 
	if (!is.null(inv)) {
		message("returning stored inverse")
		return(inv)
	}
	message("calculating inverse")
	inv <- solve(x$get())
	x$setInverse(inv)
	inv
	
}
