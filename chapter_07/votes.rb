votes = Hash.new(0)

File.open('./votes.txt') do |file|
  file.readlines.each do |line|
    name = line.chomp.upcase!

    votes[name] += 1
  end
end

p votes
