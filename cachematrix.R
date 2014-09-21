## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function( m = matrix() ) {
    a <- NULL
    set <- function( matrix ) {
        m <<- matrix
        a <<- NULL
    } #this will set the matrix, i used <<-- to assign the objest the value to to m and a to other enviroment
    get <- function() m #return a matrix called m
    setinv <- function(inverse) a <<- inverse
    
    getinv <- function() a #set and return the inverse of a matrix
    
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv) #list of the complete method
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       m<-x$getinv()
       if(!is.null(m)){
           message("getting cached data")
           return(m)
       } #return the inverse if there is one in the cache
       data<-x$get()
       m<-solve(data) #This generic function solves the equation
       x$setinv(m) 
       m #return the matrix assigned to x
}
