# See README.md to get a brief overview of what is to be done in the assignment

#Function 1
# makeCacheMatrix is a function that returns a list of functions
# Its purpose is to store a martix and a cached value of the inverse of the matrix. 
# Contains the following functions:
# * setMatrix      set the value of a matrix
# * getMatrix      get the value of a matrix
# * cacheInverse   get the cached value (inverse of the matrix)
# * getInverse     get the cached value (inverse of the matrix)
#
# Notes:
# numeric() creates a double-precision vector of the specified length with each element equal to 0
# "x = numeric()" creates a variable "x" that is not reachable from the global environment, 
# but is available in the environment of the makeCacheMatrix function.
# The <<- operator can be used to assign a value to an object in an environment 
# that is different from the current environment. 

#Start of Function 1
makeCacheMatrix <- function(x = numeric()) {
        
        # holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set it to NULL
        cache <- NULL
        
        # store a matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                # since the matrix is assigned a new value, flush the cache
                cache <<- NULL
        }
  # returns the stored matrix
        getMatrix <- function() {
                x
        }

        # cache the given argument 
        cacheInverse <- function(solve) {
                cache <<- solve
        }

        # get the cached value
        getInverse <- function() {
                cache
        }
        
        # return a list. Each named element of the list is a function
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}
