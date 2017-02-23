## The cachematrix and cacheSolve will be used to cache the inverse of a matrix

## the functions will perform the following task
## 1. Assign a value to the matrix
## 2. Get the value of the matrix
## 3. Assign the the inverse of the matrix
## 4. Get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x<<-y
    inv <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) inv <<- inverse
  getinvere <- function() inv
  list(set=set, get=get, setinverse=setinverse,getinvere=getinvere)

}


## this function is to be used to computer the inverse of a matrix.

cacheSolve <- function(x, ...) {
  
  inv <- x$get()
  if(!is.null(inv)){
    message("getting cached data.")
    return(inv)
    
  }
  data <- x$get()
  x$setinverse(inv)
  inv

}
## Assgn2
