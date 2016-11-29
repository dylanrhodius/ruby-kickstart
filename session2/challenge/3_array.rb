# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

#could not run tests, but initial answer was similar.
#changed answer to include each_char and operate on
#string directly rather than sending string chars to
#an array


class String
  def every_other_char
    new_string = ""

    each_char.with_index do |character , index |
      new_string << character if index.even?
    end

    new_string

  end
end


=begin

results = Array.new
%w(a b c).each_with_index do |character,index|
  results.push "index #{index} holds element #{character}"

  =end
