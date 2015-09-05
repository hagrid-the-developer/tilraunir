## These functions implement caching of calculation of inverse matrix
##

## This function makes object with set, get, setinverse and getinverse methods.

makeCacheMatrix <- function(x = matrix()) {
	x.inverse <- NULL
	set <- function(y) {
		x <<- y
		x.inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inv) x.inverse <<- inv
	getinverse <- function() x.inverse
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Returns inverse matrix to matrix x. Matrix must be created with
##   makeCacheMatrix. If inverse matrix is calculated already and is
##   cached in the object, then it is not calculated again.

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
	if (is.null(inv)) {
		x$setinverse(inv <- solve(x$get(), ...))
	}
	inv
}
