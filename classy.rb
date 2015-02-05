class Person
  attr_accessor :first_name, :last_name
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  
  def full_name
    return @last_name + ", " + @first_name
  end
  
  def say_something
    puts "Hello Classy!  My name is " + @first_name
  end
end

class Teacher < Person
end

prof = Teacher.new("Paula", "Paul")
prof.say_something



larry = Person.new("Larry", "McGee")

puts larry.full_name + " says.... "
people = []
people.push Person.new("John", "Doe")
people.push Person.new("Larry", "McGee")
people.push Person.new("Les", "Porter")

people[0].say_something
people[1].say_something
people[2].say_something

puts " "
people.each do |person|
  person.say_something
end
