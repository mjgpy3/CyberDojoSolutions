game = {
  board: [],
  nextBoard: [],
  height: null,
  width: null
};

calculateNext = function() {
  var i, j;

  game.nextBoard = game.board;

  for (i = 0; i < game.height; i += 1) {
    for (j = 0; j < game.width; j += 1) {
      game.nextBoard = cellLives(i, j);
    }
  }
}

getNumAround = function(i, j) {
  // Assume i and j are in the index range
  var numAround = (game.board[i][j]? -1 : 0),
      di, dj;

  for (di = i-1; di <= i+1; di += 1) {
    for (dj = j-1; dj <= j+1; dj += 1) {
      if (validIndex(di, dj)) {
        if (game.board[di][dj]) {
          numAround += 1;
        }
      }
    }
  }
  return numAround;
}

validIndex = function(i, j) {
  return i >= 0 && i < game.height && j >= 0 && j < game.width;
}

cellLives = function(isAlive, numNeighbors) {
  if ((isAlive && (numNeighbors == 2 || numNeighbors == 3))) {
    return true;
  }
  if (!isAlive && numNeighbors == 3) {
    return true;
  }

  return false;
}

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
