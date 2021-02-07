# Called when a hash key is accessed for which no value has been assigned
# unlike Hash.new(something) which gives references to one object (in this case: something) as the default for all keys
# (except numbers because math operations doesnt modify the object, numeric objects are immutable)
# with hash default block we can create new object (with new reference) each time

# rule of thumb
# use hash default object when the default is number
# use hash default block when the default is anything but number

class Person
  attr_accessor :name, :age
end

people = Hash.new do |hash, key|
  person = Person.new
  person.name = 'Anonymous'
  person.age = 0
  hash[key] = person # assign the object to current hash key

  # return person so it can be modified outside,
  # but it is unecessary explicit since the return value of above line it self is already person
  # assignment statement return the assigned value
  person
end

people['Donny'].name = 'Donny'
people['Donny'].age = '22'

p people
