## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(MASS)                                   # used to calculate inverse for non square
makeCacheMatrix <- function(x = matrix()) {

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                            #making inverse as null
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x     
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv{# function to get matrix x 
          inver <-ginv(x)
          inver%*%x
  }
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
if (!is.null(inv)) 
  {      #checking if inverse is null
              message("getting cached data")
              return(inv)
}
mat <- x$get()
inv <- solve(data, ...)  #calculate inverse data
x$setInverse(inv)
inv             #return of matrix that is inverse to "x"
}

