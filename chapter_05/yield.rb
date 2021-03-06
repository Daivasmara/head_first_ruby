def my_method
  puts "We're in the method, about to invoke your block"
  yield 'Donny'
  puts "We're back in the method!"
end

# curly braces as syntactic sugar
my_method { |name| puts "We're in the block! And my name is #{name}." }
