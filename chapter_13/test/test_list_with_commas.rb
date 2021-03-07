# ruby -I lib test/test_list_with_commas.rb
require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test
  def setup
    # run before each test
    @list = ListWithCommas.new
  end
  def teardown
    # run after each test
  end

  def test_it_join_one_word_alone
    @list.items = %w[apple]
    assert_equal('apple', @list.join)
  end

  def test_it_join_two_words_with_and
    @list.items = %w[apple banana]
    assert_equal('apple and banana', @list.join)
  end

  def test_it_join_three_words_with_commas
    @list.items = %w[apple banana melon]
    assert_equal('apple, banana, and melon', @list.join)
  end
end
