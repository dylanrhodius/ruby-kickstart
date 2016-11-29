# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(array)
  new_string = ""
  array.map { |string| new_string << string.to_s }
  string_length = new_string.length
  isPrime(string_length)
end

#copied from a previous excersice solved in codewars

def isPrime(num)
if num > 1 && num > 2
  (2...num).each do |n|
    @a = 0
     if num % n == 0
     @a = false
     break
     else
     @a = true
     end
   end
   @a
 elsif num < 2
   false
 elsif num < 1
   false
 else
   true
 end
end
