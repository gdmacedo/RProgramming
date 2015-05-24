makeCacheMatrix <- function(x = matrix()) {

## assign null local variables, telling how these have been accessed
local_m <- NULL                                    
cache_x <- NULL
  
  ## Creates a set function to store the incoming matrix as x pixels with m parameter, including cache
  set <- function(y) {                              
   
    ## assign cache_x the initial matrix of the command line
    cache_x <<- y                                   
 
    ## Start cache_m with the value null for cacheSolve understand that was run by nemos once.
    cache_m <<- NULL                               
  }
  
  ## Create function to get/return the matrix passed in the command line call to '$set
  get <- function() cache_x       
  
  ## Create function to set the value of cache_m in cache to the value of local_m passed in the call to '$set_cache_m.        
  set_cache_m <- function(local_m){ 
      cache_m <- local_m   
  }

  ## Retrieves the value in cahce_m cache through the function and returns to the requester so we can see if this value is equal to null
  get_cache_m <- function() cache_m                       
                 list(set = set, get = get, set_cache_m = set_cache_m, get_cache_m = get_cache_m)
  }
