require './fizz_buzz'
require 'test/unit'

class TestFizzBuzz < Test::Unit::TestCase
  def test_fizz_buzz_rep_of_three_is_fizz
    answer = FizzBuzz.representation 3
    expected = "Fizz"

    assert_equal expected, answer
  end

  def test_fizz_buz_rep_of_ten_is_buzz
    answer = FizzBuzz.representation 10
    expected = "Buzz"

    assert_equal expected, answer
  end

  def test_fizz_buzz_rep_of_seven_is_seven
    answer = FizzBuzz.representation 7
    expected = "7"

    assert_equal expected, answer
  end

  def test_fizz_buzz_range_works_for_a_small_range
    answer = FizzBuzz.range 0, 6
    expected = ["FizzBuzz", "1", "2", "Fizz", "4", "Buzz", "Fizz"]

    assert_equal expected, answer
  end
end
