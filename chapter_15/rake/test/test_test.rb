require 'test'
require 'minitest/autorun'

class TestTest < Minitest::Test
  def test_sum
    assert_equal(30, Test.sum(10, 20))
  end
end
