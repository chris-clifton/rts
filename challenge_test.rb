# challenge_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'challenge'

class ChallengeTest < Minitest::Test

  def test_above_and_below
    test = Challenge.new
    assert_equal("above: 1, below: 4", test.above_and_below([1, 5, 2, 1, 10], 6))
    assert_equal("above: 5, below: 0", test.above_and_below([2, 3, 4, 5, 6], 1))
    assert_equal("above: 0, below: 5", test.above_and_below([1, 2, 3, 4, 5], 10))
  end

  def test_above_and_below_with_equal
    # skip
    test = Challenge.new
    assert_equal("above: 1, below: 4", test.above_and_below([1, 5, 2, 1, 6, 10], 6))
    assert_equal("above: 5, below: 0", test.above_and_below([2, 3, 4, 5, 6, 1], 1))
    assert_equal("above: 0, below: 5", test.above_and_below([1, 2, 3, 4, 5, 10], 10))
  end

  def test_above_and_below_with_negatives
    # skip
    test = Challenge.new
    assert_equal("above: 0, below: 5", test.above_and_below([1, 5, 2, 1, -10], 6))
    assert_equal("above: 5, below: 1", test.above_and_below([2, 3, 4, 5, 6, -1], 1))
    assert_equal("above: 0, below: 6", test.above_and_below([1, 2, 3, 4, 5, 10, -11], 10))
  end

  def test_rotate_string
    test = Challenge.new
    assert_equal("ngMyStri", test.rotate_string("MyString", 2))
    assert_equal("WorldHello", test.rotate_string("HelloWorld", 5))
    assert_equal("elphiaPhilad", test.rotate_string("Philadelphia", 6))
  end

end
