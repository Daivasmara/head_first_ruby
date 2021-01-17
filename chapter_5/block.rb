def my_method(&my_block)
  puts "We're in the method, about to invoke your block"
  my_block.call('Donny')
  puts "We're back in the method!"
end

my_method do |name|
  puts "We're in the block! And my name is #{name}."
end
