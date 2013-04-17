require('./gameOfLife.js');

assert = require('assert');

var inputString = "4 8\n........\n....*...\n...**...\n........";
var expectedBitmap = [ [ false, false, false, false, false, false, false, false ],
  [ false, false, false, false, true, false, false, false ],
  [ false, false, false, true, true, false, false, false ],
  [ false, false, false, false, false, false, false, false ] ];

var expectedNext = [ [ false, false, false, false, false, false, false, false ],
  [ false, false, false, true, true, false, false, false ],
  [ false, false, false, true, true, false, false, false ],
  [ false, false, false, false, false, false, false, false ] ];

fillBoard(inputString);

for (var i = 0; i < game.board.height; i += 1) {
  for (var j = 0; j < game.board.width; j += 1) {
    assert.equal(expectedBitmap[i][j], game.board[i][j]);
  }
}

assert.equal(2, getNumAround(1, 4));

assert.equal(false, cellLives(true, 0));
assert.equal(false, cellLives(true, 1));
assert.equal(false, cellLives(true, 4));
assert.equal(false, cellLives(true, 5));
assert.equal(false, cellLives(true, 6));
assert.equal(false, cellLives(true, 7));
assert.equal(false, cellLives(true, 8));
assert.equal(true, cellLives(true, 2));
assert.equal(true, cellLives(true, 3));
assert.equal(true, cellLives(false, 3));

calculateNext();

for (var i = 0; i < game.board.height; i += 1) {
  for (var j = 0; j < game.board.width; j += 1) {
    assert.equal(expectedNext[i][j], game.nextBoard[i][j]);
  }
}

console.log("All Game of Life tests passed");
