array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# each
array.each { |n| puts n }

# find_all
p(array.find_all { |n| (n % 2).zero? }) # 2, 4, 6, 8, 10

# reject
p(array.reject { |n| (n % 2).zero? }) # 1, 3, 5, 7, 9

# map
p(array.map { |n| n**3 }) # 1, 8, 27, 64, 125, 216, 343, 512, 729, 1000

# all?
p(array.all? { |n| n.odd? }) # false
p(array.all?(&:odd?)) # false

# none?
p(array.none? { |n| n > 10 }) # true

# count
p(array.count { |n| n.odd? }) # 5
p(array.count(&:odd?)) # 5

# partition
p(array.partition { |n| n.odd? }) # [[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]]
p(array.partition(&:odd?)) # [[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]]

strings = %w[a aa aaa aaaa]

# max_by
puts(strings.max_by { |s| s.length }) # aaaa
puts(strings.max_by(&:length)) # aaaa

# min_by
puts(strings.min_by { |s| s.length }) # a
puts(strings.min_by(&:length)) # a
