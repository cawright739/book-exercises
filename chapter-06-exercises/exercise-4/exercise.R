# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
twice_as_long <- function(word_1, word_2){
  
  if((nchar(word_1) > nchar(word_2)) && (nchar(word_1) != nchar(word_2))){
    large_word <- word_1
    small_word <- word_2
  }
  
  else if((nchar(word_1) < nchar(word_2)) && (nchar(word_1) != nchar(word_2))){
    large_word <- word_2
    small_word <- word_1
  }
  
  else if(nchar(word_1) == nchar(word_2)){
    print("The words are the same length")
    return()
  }
  return(nchar(large_word) >= 2*nchar(small_word))
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
twice_as_long("Eleven","Two")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

