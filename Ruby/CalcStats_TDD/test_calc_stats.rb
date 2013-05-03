require './calc_stats'
require 'test/unit'

class TestCalcStats < Test::Unit::TestCase
  @@test_list = [6, 9, 15, -2, 92, 11]

  def test_the_minimum_value_of_a_test_list_is_negative_two
    answer = CalcStats.min_value(@@test_list)
    expected = -2

    assert_equal expected, answer
  end

  def test_the_maximum_value_of_a_test_list_is_ninety_two
    answer = CalcStats.max_value(@@test_list)
    expected = 92

    assert_equal expected, answer
  end

  def test_the_number_of_elements_in_test_list_is_six
    answer = CalcStats.number_of_elements(@@test_list)
    expected = 6

    assert_equal expected, answer
  end

  def test_the_average_is_within_some_small_delta
    answer = CalcStats.average(@@test_list)
    expected = 21.833333

    assert_equal true, within_delta(expected, answer, 0.000001)
  end

  def within_delta expected, answer, delta
    (answer - expected).abs < delta
  end

end
