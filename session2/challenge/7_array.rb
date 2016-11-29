# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  #creates an array with all these symbols as elements
  #iterates throuch each element and makes new sentence
  #equal to the substitution of each of the element
  #which is being iterated in the array
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  #new array called words, made out of splitting
  #string at every " " instance
  words = sentence.split
  #new empty array
  #pushes even indexed words into new array
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end

#tried working with this for 2 hours
#gsub(/[[:punct:]]/, "")
#couldnt find how not to consider the apostrophe


#could not solve the problem, could try to continue
#with this approach of individual replacement of each
#word but didnt really seem rewarding in terms of
#learning. 14 examples solved with this approach.
#Copied answer.

=begin

def alternate_words(string)
  new_array = []
  string2 = string.gsub("!", "").gsub("@", "").gsub("$", "").gsub("#", "").gsub("%", "").gsub("^", "").gsub("&", "").gsub("*", "")
  string3 = string2.gsub("(", "").gsub(")", "").gsub("--you", "").gsub("=", "").gsub("_", "").gsub("+", "").gsub("[", "").gsub("]", "")
  string4 = string3.gsub(":", "").gsub(";", "").gsub("-", "").gsub(",", "").gsub(".", "").gsub("/", "").gsub("<", "").gsub(">", "")
  string_array = string4.gsub("\"", "").gsub("?", "").gsub("|", "").split(" ")
  string_array.each_with_index do |word, index|
    new_array.push(word) if index.even?
  end

  new_array
end

=end
