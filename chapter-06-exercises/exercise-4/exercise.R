# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string

twice_as_long <- function(word_1, word_2) {
  if ((nchar(word_1) > nchar(word_2)) &&
      (nchar(word_1) != nchar(word_2))) {
    large_word <- word_1
    small_word <- word_2
    print("Is word #1 two times greater than word #2")
    return(nchar(large_word) >= 2 * nchar(small_word))
    
  }
  
  else if ((nchar(word_1) < nchar(word_2)) &&
           (nchar(word_1) != nchar(word_2))) {
    large_word <- word_2
    small_word <- word_1
    print("Is word #2 two times greater than word #1")
    return(nchar(large_word) >= 2 * nchar(small_word))
  }
  
  else if (nchar(word_1) == nchar(word_2)) {
    print("The words are the same length")
    return()
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

twice_as_long("Twenty Three","Two")
# [1] "Is word #1 two times greater than word #2"
# [1] TRUE
# > twice_as_long("Ele","Two")
# [1] "The words are the same length"
# NULL
# > twice_as_long("Ele","Two00000")
# [1] "Is word #2 two times greater than word #1"
# [1] TRUE


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"

describe_difference <- function(word_1, word_2){
  
  if ((nchar(word_1) > nchar(word_2)) &&
      (nchar(word_1) != nchar(word_2))) {
    difference <- nchar(word_1) - nchar(word_2)
    print(paste("Your first string is longer by", difference, "charatcer"))
 
    
    
  }
  
  else if(nchar(word_1) != nchar(word_2)){
    difference <- nchar(word_2) - nchar(word_1)
    print(paste("Your second string is longer by", difference, "character"))
 
    
  }
  
  else if(nchar(word_1) == nchar(word_2)){
    print("Your strings are the same length")

  }

}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("Twenty", "Two")
