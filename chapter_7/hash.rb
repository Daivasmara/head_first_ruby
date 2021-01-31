first_elements = { 'H' => 'Hydrogen', 'Li' => 'Lithium' }
second_elements = { 'O' => 'Oxygen' }

elements = first_elements.merge(second_elements)

puts elements['H']
puts elements['Li']
puts elements['O']

p elements.keys
p elements.values

puts elements.key?('H') # has_key?
puts elements.value?('Hydrogen') # has_value?

elements.each do |key, value|
  puts "#{key}: #{value}"
end
