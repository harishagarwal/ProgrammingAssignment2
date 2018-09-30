## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix creates a list containing a function to

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
  x <<- y
  i <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

# The following function calculates the inverse of the matrix. It first checks if the inverse has already been calculated. 
# If so, it gets the inverse matrix from cache and skips the computation. 
# If not, it computes the inverse, sets the value in the cache via setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
