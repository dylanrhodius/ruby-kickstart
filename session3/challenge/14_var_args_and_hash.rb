#defining the method which can take any number of
#parameters
def problem_14(*params)
  #sets variable problem = to the value of "problem"
  #hash only if this "problem" is actually a hash
  problem = params.pop[:problem] if params.last.is_a? Hash

  #afaiu, if problem is true he keeps the current
  #variable value. otherwise, he makes it equal a
  #value of count_clumps
  problem ||= :count_clumps

  #returns count_clumps with its parameters if condition is met
  return count_clumps(*params) if problem == :count_clumps
  #returns same_ends with its parameters if condition is met
  return same_ends(*params)    if problem == :same_ends
end

#defines count_clumps which can take any number of
#parameters

def count_clumps(*numbers)
  #sets values of variables
  clumps     = 0
  previous   = nil
  two_before = nil

  #goes through each parameter "numbers" and adds 1
  #to variable clumps if conidtion is met
  numbers.each do |number|
    clumps += 1 if (previous == number) && (previous != two_before)
  #now sets variable two_before equal to previous and
  #previous = to the recent number iterated through
    two_before = previous
    previous   = number
  end
  #returns clumps value
  clumps
end

def same_ends(n, *params)
  params[0, n] == params[-n, n]
end

# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
