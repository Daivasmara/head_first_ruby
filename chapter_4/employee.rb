class Employee
  attr_reader :name

  def initialize(name = 'Anonymous')
    self.name = name
  end

  def name=(name)
    if name == ''
      raise "Name can't be blank!"
    end

    @name = name
  end

  def print_name
    puts "Name: #{name}" # without explicitly specify receiver, default receiver is the current object.self
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name = 'Anonymous', salary = 0)
    super(name)
    self.salary = salary
  end

  # Class method as factory method
  def self.security_guard(name)
    new(name, 20_000)
  end

  # Class method as factory method
  def self.engineer(name)
    new(name, 70_000)
  end

  def salary=(salary)
    if salary.negative?
      raise "Salary of #{salary} is not valid!"
    end

    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay for this period: #{formatted_pay}"
  end
end
