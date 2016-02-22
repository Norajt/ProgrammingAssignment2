## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
