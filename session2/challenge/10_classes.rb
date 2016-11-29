# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_accessor 'name', 'age'


#was initially giving birthday 1 argument. Realised
#that was not needed, as all function has to do is
#add 1 to the age instance variable

  def birthday
    @age += 1
  end


end
