def print_list_in_reverse(the_list)
  out_array = []
  while the_list
    out_array.push(the_list[:data])
    the_list = the_list[:next]
  end
  puts out_array.reverse!
end


# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"
