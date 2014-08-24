
## This is the first function, you just feed it with an invertible matrix that
#you call x or in the argument you write x="name of the matrix". This returns 
#the special matrix,  wich is a list, but a list is just a 4*1 Matrix!.


makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
	set<-function(y){
		x<<- y
		m<<- NULL}
	get<-function() x
	setinverse<-function(solve) m <<- solve
	getinverse<-function() m
	z<<-list(set=set, get=get,  
		setinverse=setinverse, 	
		getinverse=getinverse)
z
}


## This is the second function, it returns the inverse of the matrix or gets the 
#cached value if it has been calculated previously.

cacheSolve <- function(x, ...) {
        m <- z$getinverse()
     	if(!is.null(m)) {
           	message("getting cached data")
           	return(m)
     	}
     	data <-z$get()
     	m <- solve(data, ...)
     	z$setinverse(m)
	m

}
