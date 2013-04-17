game = {
  board: [],
  nextBoard: [],
  height: null,
  width: null
};



fillBoard = function(input_string) {
  var lines = input_string.split("\n"),
      dimensions = lines[0].split(' '),
      i, j;

  game.height = parseFloat(dimensions[0]);
  game.width = parseFloat(dimensions[1]);

  for (i = 1; i < game.height+1; i += 1) {
    game.board.push([]);
    for (j = 0; j < game.width; j += 1)  {
      if (lines[i][j] == ".") {
        game.board[i-1].push(false);
      }
      else {
        game.board[i-1].push(true);
      }
    }
  }

  return game.board;
}
