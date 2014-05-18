## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix create and return  a list of two objects containing  the matrix given in argument and  the inverse 
## of the same matrix.

makeCacheMatrix <- function(x = matrix()) {

               if(det(x)!=0){
                     speMatrix <-list()
                     speMatrix$mat <-x
                     speMatrix$invMat <- solve(x)
                     return(speMatrix)     
                   }
               else 
                   {
                     paste("The matrix is not inversable")
                   }
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {



            if(is.list(x))
            {
              if(is.matrix(x$invMat))
               {
                return(x$invMat)
                }
               else
               {
                  inv<-solve(x$mat)
                  return (inv)
                }
              
            }
  
            else
            {
              paste ("the argument of cacheSolve() should be list of matrix")
              
            }  
        ## Return a matrix that is the inverse of 'x'
}
