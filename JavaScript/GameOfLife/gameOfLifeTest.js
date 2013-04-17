require('./gameOfLife.js');

assert = require('assert');

var inputString = "4 8\n........\n....*...\n...**...\n........";
var expectedBitmap = [ [ false, false, false, false, false, false, false, false ],
  [ false, false, false, false, true, false, false, false ],
  [ false, false, false, true, true, false, false, false ],
  [ false, false, false, false, false, false, false, false ] ];

fillBoard(inputString);

for (var i = 0; i < game.board.height; i += 1) {
  for (var j = 0; j < game.board.width; j += 1) {
    assert.equal(expectedBitmap[i][j], game.board[i][j]);
  }
}

assert.equal(2, getNumAround(1, 4));

console.log("All Game of Life tests passed");
