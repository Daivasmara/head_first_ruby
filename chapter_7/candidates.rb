class Candidate
  attr_accessor :name, :age, :occupation, :hobby

  # options default to empty hash to avoid error when no hash passed as an argument
  def initialize(name, options = {})
    self.name = name
    self.age = options[:age]
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
  end

  def to_s
    "Name: #{name}\nAge: #{age || '--'}\nOccupation: #{occupation || '--'}\nHobby: #{hobby || '--'}"
  end
end

# You can remove the colon (:) if the key is symbol and replace hash rocket (=>) with colon (:)
# Braces are optional on final argument

# BEFORE:
# candidate1 = Candidate.new('Donny', { :age => 24, :occupation => 'SWE' })

# AFTER:
candidate1 = Candidate.new('Donny', age: 24, occupation: 'SWE')
puts candidate1
