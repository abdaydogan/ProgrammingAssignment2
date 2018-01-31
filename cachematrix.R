
### The below function(makeCahceMatrix aims to generate a special matrix object to cahce the inverse)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
       
       
       
       
}

###The below function(cacheSolve aims to compute the inverse of the special matrix returned by the above function called makeCahceMatrix. If the inverse has not been estimated, the below function estimates it itself. If the inverse has already been estimated , the below function obtains it from the cache.)

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}