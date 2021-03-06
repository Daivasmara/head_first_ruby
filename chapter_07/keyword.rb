# greeting and name is a keyword, noted by the colon (:) after
# to prevent silent error on typo, cause hash params wont raise any error
# greeting: means it has no default value therefore it's a required keyword and can't be empty
def welcome(greeting:, name: 'Anon')
  puts "#{greeting}, #{name}!"
end

welcome(name: 'Donny', greeting: 'Hello')
welcome(greeting: 'Hi')

# raise error, nme is an unknown keyword
# welcome(greeting: 'Hello', nme: 'Donny')
#
# raise error, missing greeting keyword
# welcome(name: 'Donny')
