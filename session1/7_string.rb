# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

#tried many things but had to give up. max passes: 2. copied answer and made sure to understand how it worked. tried for 3 hours.

def pirates_say_arrrrrrrrr(string)
  new_string = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index]
    new_string << current_char if add_next #if add next has been set true in previous loop, it will add the current character
    add_next = (current_char == "r" || current_char == "R") #will set the value of add_next var to true or false
  end
  new_string
end
