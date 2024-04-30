# Create a cache object to store computed values
my_cache <- list()

# Define a function to compute and cache the mean of a vector
compute_mean_cached <- function(x) {
  # Check if the result is already cached
  if (is.null(my_cache[["mean"]])) {
    # Compute the mean and store it in the cache
    my_cache[["mean"]] <- mean(x)
    cat("Computing mean and caching result...\n")
  } else {
    cat("Using cached mean result...\n")
  }
  # Return the cached mean value
  return(my_cache[["mean"]])
}

# Example usage
vec <- 1:1000000  # A large numeric vector
result1 <- compute_mean_cached(vec)  # Computes and caches the mean
result2 <- compute_mean_cached(vec)  # Uses the cached mean value

# Check if the results are the same
identical(result1, result2)  # Should return TRUE
