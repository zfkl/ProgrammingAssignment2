## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#create a matrix x thanks to set function. x is matrix y, and inverse of x is matrix() stored in cache
#get function to get matrix, set_inverse calculates the inverse of a matrix
#get_inverse is for getting the inverse of x from cache
#list is a list of function returned for described functions

makeCacheMatrix <- function(x = matrix()) {
                                          set <- function(y=matrix()){
                                                  x<<-y        
                                                  inverse_x<<-matrix()
                                          }    
            get<- function(){x}
            set_inverse<- function(inverse=matrix())inverse_x<<-solve(inverse)
            get_inverse<-function()inverse_x
            list(set=set,get=get,set_inverse=set_inverse,get_inverse=get_inverse)
}


## Write a short comment describing this function
#cacheSolve checks first if the inverse of is already calculated, if so, it retrieves it from cache
#otherwise, it calculates it and stores it in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_x<-x$get_inverse
        if(!is.null(inverse_x))
        {
                          inverse_x<-get_inverse()
                          return(inverse_x)
        }
          data<-x$get()
          inverse_x<-x$set_inverse(data)
          inverse_x
}
