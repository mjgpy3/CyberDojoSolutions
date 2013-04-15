class MineField
  attr_accessor :grid, :board

  def initialize
    @grid = []
    @board = []
  end

  def build_grid_from_input_string input_string
    # Don't care about the first line since ruby is smarter
    lines = input_string.split("\n")[1..-1]

    (0.upto(lines.size-1)).each do |i|
      @grid << []
      lines[i].each_char {|char| @grid[i] << (char=="*")}
    end
  end

  def build_board_from_grid
    (0...@grid.size).each do |i|
      @board << []
      (0...@grid[0].size).each do |j|
        if @grid[i][j]
          @board[i] << "*"
        else
          @board[i] << get_number_of_mines_around(i,j).to_s
        end
      end
    end
  end

  def get_number_of_mines_around row, col
    num_mines = (@grid[row][col] ? -1 : 0)

    (row-1).upto(row+1).each do |i|
      (col-1).upto(col+1).each do |j|
        if valid_index(i, j)
          num_mines += 1 if @grid[i][j]
        end
      end
    end
    num_mines
  end

private

  def valid_index(row_num, col_num)
    row_indicies = 0.upto(@grid.size-1).to_a
    col_indicies = 0.upto(@grid[0].size-1).to_a

    (row_indicies.include? row_num) && (col_indicies.include? col_num)
  end
end
