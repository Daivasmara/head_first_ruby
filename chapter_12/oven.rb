class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

class Oven
  attr_accessor :contents

  def turn_on
    puts 'Turning oven on.'
    @state = 'on'
  end

  def turn_off
    puts 'Turning oven off.'
    @state = 'off'
  end

  def bake
    unless @state == 'on'
      raise OvenOffError, 'You need to turn the oven on first!'
    end

    if contents.nil?
      raise OvenEmptyError, "There's nothing in the oven!"
    end

    "golden-brown #{contents}"
  end
end

# Forgot to turn on the oven first
dinner = ['turkey', nil, 'pie']
oven = Oven.new
dinner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}"
  rescue OvenOffError
    oven.turn_on
    retry
  rescue OvenEmptyError => e
    puts "ERROR: #{e.message}"
  ensure
    oven.turn_off
    puts "\n"
  end
end
