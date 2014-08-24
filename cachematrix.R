## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

set<-NULL
setval<-function(y){
        x<<-y
        set<<-NULL
}

getval<-function()x
setsolve<-function(z) set<<-z
getsolve<-function() set

list(set=setval,get=getval,setsolve=setsolve,getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        set<-x$getsolve()
        
        if(!is.null(set)){
        
        message("getting cached data")
        return(set)
        }
        
        data<<-x$getval()
        set<-solve(data,...)
        x$setsolve(set)
        set
}
