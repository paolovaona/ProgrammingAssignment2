## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix does the following:
## 1 set the value of the matrix
## 2 get the value of the matrix
## 3 set the value of the inverse matrix
## 4 get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set  <- function(y) {
        x <<- y
        inver <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inver <<- inverse
    getinverse <- function() inver
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

## The following function does the following
## 1 check if the inverse of the matrix has been calculated
## 2 if positive return the cahced value
## 3 if negative it calculate the inverse and store it in the variable


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inver <- x$getinverse()
    if(!is.null(inver)) {
        print("getting inverse matrix cached")
        return(inver)
    }
    data <- x$get()
    inver <- solve(data, ...)
    x$setinverse(inver)
    inver
}
