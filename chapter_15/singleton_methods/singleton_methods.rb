class Person
end

superhero = Person.new

# singleton methods
# handy for unit tests (override methods)
def superhero.fly
  puts 'Up we go!'
end

superhero.fly

not_superhero = Person.new
p not_superhero.respond_to?('fly') # false
