require './print_diamond'
require 'test/unit'

class TestPrintDiamond < Test::Unit::TestCase

  def test_distance_between_letters_A_and_C_is_2
    assert_equal distance_between_letters('A', 'C'), 2
  end

  def test_distance_between_letters_doesnt_care_about_case
    assert_equal distance_between_letters('a', 'C'), 2
  end

  def test_distance_between_A_and_A_is_0
    assert_equal distance_between_letters('A', 'A'), 0
  end

  def test_get_diamond_loop_indicies_works_for_some_trivial_cases
    expected_answer = [3,2,1,0,1,2,3]
    actual_answer = get_diamond_loop_indicies('A', 'D')

    assert_equal expected_answer, actual_answer

    expected_answer = [1,0,1]
    actual_answer = get_diamond_loop_indicies('A', 'B')

    assert_equal expected_answer, actual_answer
  end

  def test_get_space_padding_gets_four_spaces_when_four_is_passed
    assert_equal "    ", get_space_padding(4)
  end

  def test_As_offset_by_two_is_C
    assert_equal get_letter_from_offset('A', 2), 'C'
  end

  def test_one
    puts "\n"
    puts_diamond_from_letter('D')
  end

end
