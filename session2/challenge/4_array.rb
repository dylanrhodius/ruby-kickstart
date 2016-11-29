# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(array)
  sorted_array = array.sort
  new_array = []

  sorted_array.each do |num|
    if sorted_array.include?(num**2) == true
      new_array.push(num)
    else
    end
  end

  return new_array
end
