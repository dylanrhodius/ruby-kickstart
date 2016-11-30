=begin

Passed all tests but the last,
was inittially trying to work with this:

def lowest
  gcd = gcd(numerator, denominator)
  return "#{numerator/gcd}/#{denominator/gcd}"
end

But returning a string did not work.
Worked out second version of method trying to avoid
a string result, but failed too.

def lowest
  gcd = gcd(numerator, denominator)
  fraction_top = (numerator/gcd)
  fraction_bottom = (denominator/gcd)
  print fraction_top
  print "/"
  print fraction_bottom
end


looked at answer and realised we were supposed to
create a new instance of class Fraction with these new
numerators and denominators

=end


# Define a class called Fraction
# This class is used to represent a ratio of two integers

# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5

class Fraction

    # Include setter methods called numerator and denominator that allow the user to change these values

  attr_accessor :numerator, :denominator


  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

  # Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)

  def to_f
    return (numerator.to_f / denominator.to_f)
  end

  # Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
  # are reduced to lowest terms (ie 20/60 becomes 1/3)

  def lowest
    gcd = gcd(numerator, denominator)
    Fraction.new(numerator/gcd, denominator/gcd)
  end



  # This will require finding the greatest common divisor for the numerator and denominator
  # then dividing both by that number.
  # I have included a greatest common divisor method for you
  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end


  # You should also define a method, to_s, that will represent the Fraction as a String
    def to_s
      return "#{numerator}/#{denominator}"
    end




end
