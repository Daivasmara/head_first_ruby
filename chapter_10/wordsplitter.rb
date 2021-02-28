class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(' ').each { |word| yield word }
  end
end

string = WordSplitter.new
string.string = 'Hello there how you doin?'
p string.find_all { |word| word.include?('e') }
p string.map { |word| word + 'ay' }
