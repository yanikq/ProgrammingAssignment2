## Cousera Data Science Secialisaton
## Course: R Programming
## Week 3
## User: yanikq

## The below function creates a special vector object that can put the inverse into
## the cache [and retrieve it].

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This second function (below) calculates the inverse of the special vector 
## created by the first function (above). First, it checks to see if the inverse has
## already been calculated. If it has, it retrieves the inverse from the cache and 
## continues. If it has not, it calculates the inverse and sends it to the cache via the
## setinv function.

cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}
