## The following pair of functions caches the inverse of a matrix and if the matrix variable does not have the inverse then the second function
## calculates the inverse or calls the value from the cache otherwise

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

set<-NULL
setval<-function(y){
        x<<-y
        set<<-NULL
}
## function "setval" sets the value of the matrix object created in makeCacheMatrix
## the value of the argument "y" will be a matrix passed to set the value of "x"
getval<-function()x
## the "getval" returns the value of the object "x"
setsolve<-function(solve) set<<-solve
## "setsolve" function will set the inverse value of the matrix in the "set" variable
getsolve<-function() set
## the getsolve function will return the value set in the "set" variable. This will be the inverse value.

list(set=setval,get=getval,setsolve=setsolve,getsolve=getsolve)
}




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
        set<-x$getsolve()
        
        if(!is.null(set)){
        
        message("getting cached data")
        return(set)
        }
        
        ##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
       
        data<<-x$getval()
        set<-solve(data,...)
        # "solve" function calculates the inverse of a square matrix
        x$setsolve(set)
        set
        #the function calculates the inverse again if the inverse has not been calculated already
}
