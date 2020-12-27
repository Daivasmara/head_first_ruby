class Dog
  attr_accessor :name, :age

  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

doggy = Dog.new
doggy.name = 'Doggy'
doggy.age = 10

# because to_s is called when puts is called, by overriding the Object's to_s method
# we can manipulate the puts output, instead of < Dog:0x007fb2b50c4468 >
puts doggy
