# completed code looking at Katerina's code.
# walked me through a previous solution of hers.
# once again, thank you! I would not have been able
# to do it without her reference.

def staircase(n)
  stair_hash = {}

# create a for loop from 1 to parameter passed.
  for i in 1..n
    puts "i = #{i}"
    if i.odd?
      stair_array = []
# if this parameter is odd, create a new empty array
      for j in 1..i
        if j.even?
          stair_array<<j
# loop again, this time checking if numbers from 1 to i are even. If so, push even values to the newly created array.
        end
      end
      stair_hash[i] = stair_array
#finally, return each key of i which is odd, with its respective array.
    end
  end
  stair_hash
end

puts "staircase 1: #{staircase 1}"  # => {1 => []}
puts ""
puts "staircase 2: #{staircase 2}"  # => {1 => []}
puts ""
puts "staircase 3: #{staircase 3}"  # => {1 => [], 3 => [2]}

puts ""
puts "staircase 4: #{staircase 4}"  # => {1 => [], 3 => [2]}
puts ""
puts "staircase 5: #{staircase 5}"  # => {1 => [], 3 => [2], 5 =>[2, 4]}
puts ""
