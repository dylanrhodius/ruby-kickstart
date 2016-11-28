# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"


def odds_and_evens(string, return_odds)
  new_string = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    new_string << string[index]
  end
  new_string
end

#looked at answer but learnt how to use next if




=begin  THIS DOES NOT WORK
def odds_and_evens(string, return_odds)

  new_string = ""
  string_array = string.split(//)

  if return_odds
    string_array.each do |x|
    new_string << x if string_array.index(x).odd?
    end
  else
    string_array.each do |x|
    new_string << x if string_array.index(x).even?
    end
  end

  return new_string

end
=end
