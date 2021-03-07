# ruby -I lib test/test_person.rb
require 'minitest/autorun'
require 'person'

class TestPerson < Minitest::Test
  def test_introduction
    person = Person.new
    person.name = 'Alice'
    assert(person.introduction == 'Hello, my name is Alice!')
  end
end
