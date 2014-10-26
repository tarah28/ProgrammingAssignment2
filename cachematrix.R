## Put comments here that give an overall description of what your


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL
    
    #set matrix function
    
    set <- function(matrix){
        m <<- matrix
        i <<- NULL
    }
    #get matrix
    get <- function() {
        m
    }
    setinverse <- function(inverse){
        i <<- inverse 
    } 
    
    getinverse <- function() {
        i
    }
                              
    list(set = set, get = get,
         setinverse = setinverse,
        getinverse = getinverse)



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null (m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data) %*% data
    x$setinverse (m)
    m
}
