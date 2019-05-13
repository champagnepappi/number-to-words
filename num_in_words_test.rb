require 'test/unit'
require_relative 'num_in_words'
class NumInWordsTest < Test::Unit::TestCase
  def test_converting_number_to_words
    num = Num.new
    assert_equal(num.number_in_words(1000), 'One thousand')
    assert_equal(num.number_in_words(423), 'Four hundred twenty three')
    assert_equal(num.number_in_words(400), 'Four hundred')
  end
end
