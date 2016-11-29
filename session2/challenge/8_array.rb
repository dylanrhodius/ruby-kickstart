# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  new_array = []
  array.each_cons(3) do |x, y, z|
    return true if x == y && y == z
  end
  false
end




=begin
result = []
Array(1..10).each_cons(2) { |a, b| result << [a, b] }
result # => [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9], [9, 10]]
=end

=begin
found on internet, works perfectly. Read about
chunk_while but couldnt understand what was going on
def got_three?(array)
  array.chunk_while(&:==).any?{|g| g.size >= 3}
end

=end
