def pig_latin(words)
  words.each do |word|
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts new_word
  end
end

my_words = %w[blocks totally rock]
pig_latin(my_words)
