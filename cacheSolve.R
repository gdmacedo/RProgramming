## Receive makeCacheMatrix
cacheSolve <- function(x) {
          ## Assigns the value for m cache for local variable.
          private_function_m <- x$get_cache_m()              
          
          ## Checks whether the private_function_m containing m is not equal to null
          if(!is.null(private_function_m)) {
             ## if returns a message to m            
             message("getting cached data")
             return(private_function_m)
          }

  ## Accesses the function x$ge() in makeCacheMatrix file and assigns the value received for the variable Matrix_Staring
  Matrix_Staring <- x$get()               

  ## Assign matrix_return the matrix Matrix_Staring reversed through the function solve ()
  matrix_return <- solve(Matrix_Staring)   

  ## Accesses the function x$set_cache_m () while paramentro the matrix inverted matrix_return
  x$set_cache_m(matrix_return)
  
  ##  If cache_m is not equal to null matrix_return is processed to return the user solititante
  matrix_return
}
