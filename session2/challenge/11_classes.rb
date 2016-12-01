#It is failing the third test but the expected and
#actual outputs are the same..

#Using Chris Pine's english number method.

class BeerSong

  attr_accessor 'bottles'

  def initialize(bottles)
    @bottles = 0 if bottles < 0
    @bottles = 99 if bottles > 99
    @bottles = bottles
  end


def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
  'four', 'five', 'six',
  'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
  'forty', 'fifty', 'sixty',
  'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen']
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
    # Now we just return "num_string"...
    num_string
end

#Had my own method, but deleted by mistake with rm
#from terminal. Got Rick Clark's method form GitHub.

def print_song

  num = @bottles

  if num == 0
    puts ""
  elsif num == 1
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  elsif num == 2
    puts "Two bottles of beer on the wall,"
    puts "Two bottles of beer,"
    puts "Take one down, pass it around,"
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."

  else

  num.downto(3) do
    |num|
    eng = english_number(num)
    puts "#{eng.capitalize} bottles of beer on the wall,"
    puts "#{eng.capitalize} bottles of beer,"
    puts "Take one down, pass it around,"
    puts "#{english_number(num-1).capitalize} bottles of beer on the wall,"
  end
  puts "Two bottles of beer on the wall,"
  puts "Two bottles of beer,"
  puts "Take one down, pass it around,"
  puts "One bottle of beer on the wall,"
  puts "One bottle of beer,"
  puts "Take one down, pass it around,"
  puts "Zero bottles of beer on the wall."
end
end

end



# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
