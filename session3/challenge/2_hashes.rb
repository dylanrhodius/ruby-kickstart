# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
 stair_hash = Hash.new
 stair_array = Array.new

 for i in 1..n
   puts "i = #{i}"
   if i.odd?
     stair_hash[:i] = stair_array
     puts "Our hash: #{stair_hash}"
     puts "Our array: #{stair_array}"
   else
     stair_array<<i if i < stair_hash[i]
     puts "Our hash: #{stair_hash}"
     puts "Our array: #{stair_array}"
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
