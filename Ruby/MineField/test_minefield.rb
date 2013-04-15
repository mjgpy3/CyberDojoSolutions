require './minefield'
require 'test/unit'

class TestMineField < Test::Unit::TestCase

  def test_a_grid_can_be_accessed_in_a_new_minefield_and_it_is_empty
    mf = MineField.new

    assert_equal mf.grid, []
  end

  def test_build_grid_from_input_string_works_for_the_given_test_data
    mf = MineField.new
    input_string = "3 4\n*...\n..*.\n...."
    mf.build_grid_from_input_string input_string
    
    expected = [[true,false,false,false], 
                [false,false,true,false],
                [false,false,false,false]]

    assert_equal expected, mf.grid
  end

  def test_get_number_of_mines_around_works_for_some_cases
    mf = MineField.new
    input_string = "3 4\n*...\n..*.\n...."
    mf.build_grid_from_input_string input_string

    answer = mf.get_number_of_mines_around 0, 0
    expected = 0

    assert_equal expected, answer

    answer = mf.get_number_of_mines_around 1, 1
    expected = 2

    assert_equal expected, answer
  end

  def test_build_board_from_grid_works_for_given_data
    mf = MineField.new
    input_string = "3 4\n*...\n..*.\n...."
    mf.build_grid_from_input_string input_string

    mf.build_board_from_grid

    answer = mf.board
    expected = [['*', '2', '1', '1'], ['1', '2', '*', '1'], ['0', '1', '1', '1']]

    assert_equal expected, answer
  end

end
