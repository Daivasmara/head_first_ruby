class Person
  def greeting
    print 'Hello!'
  end

  def greet_by_name(name)
    "Hello, #{name}!"
  end
end

class Friend < Person
  def greeting
    super
    puts ' Glad to see you!'
  end

  def greet_by_name(name)
    basic_greeting = super(name)
    # basic_greeting = super <--- works as well (without passing arguments and parentheses)
    "#{basic_greeting} Glad to see you!"
  end
end

ann = Friend.new
ann.greeting
puts ann.greet_by_name('Donny')
