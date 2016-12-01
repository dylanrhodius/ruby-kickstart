# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

#min 28 video.

def reverse_map(*array, &block)
  array.reverse.map(&block)
end


puts reverse_map(1, 2, 3) { |i| i * 2 }
