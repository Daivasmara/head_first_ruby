class Steak
  include Comparable

  attr_accessor :grade

  GRADE_SCORES = { 'Prime' => 3, 'Choice' => 2, 'Select' => 1 }

  def <=>(other)
    if GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
      -1
    elsif GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
      0
    else
      1
    end
  end
end

prime = Steak.new
prime.grade = 'Prime'

choice = Steak.new
choice.grade = 'Choice'

select = Steak.new
select.grade = 'Select'

puts "prime > choice: #{prime > choice}"
puts "choice < prime: #{choice < prime}"
puts "prime >= choice: #{prime >= choice}"
puts "choice <= prime: #{choice <= prime}"
puts "prime == prime: #{prime == prime}"
puts "choice.between?(select, prime): #{choice.between?(select, prime)}"
