require './phone_numbers'
require 'test/unit'

class TestPhoneNumbers < Test::Unit::TestCase
  def test_lengths_in_list_works_for_a_simple_case
    answer = lengths_in_list [2, 123, 1, 1234, 12345, 123456]
    expected = [1, 3, 4, 5, 6]

    assert_equal expected, answer
  end

  def test_chop_list_max_size_strings_makes_list_of_various_numbers_at_most_a_certain_size
    answer = chop_list_max_size_strings [1234, 1, 612, 6125231, 611423, 16, 65161121, 123512,215215,621461265216,215], 3
    
    answer.each do |number|
      assert_equal true, number.length <= 3
    end
  end

  def test_number_list_is_consistent_when_the_passed_lists_are_entirely_different
    answer = numbers_are_consistent_at_size [1234, 43210, 141, 1], 3

    assert_equal true, answer
  end

  def test_number_list_is_not_consistent_at_length_when_same_numbers_are_passed
    answer = numbers_are_consistent_at_size [123, 13, 5, 123], 3

    assert_equal false, answer
  end

  def test_number_list_is_not_consistent_for_instructional_input
    answer = number_list_is_consistent [91125426, 97625992, 911]

    assert_equal false, answer
  end

  def test_number_list_is_consistent_when_consistent_list_is_passed
    answer = number_list_is_consistent [141551, 61253161, 611, 215126, 12421]

    assert_equal true, answer
  end

  def test_number_list_is_not_consistent_when_a_digit_number_starts_another
    answer = number_list_is_consistent [1, 1521, 61]

    assert_equal false, answer
  end
end
