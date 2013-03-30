require("./fizzBuzz.js");

assert = require("assert");

assert.equal("FizzBuzz", fizzBuzzRep(15));
assert.equal("7", fizzBuzzRep(7));
assert.equal("Fizz", fizzBuzzRep(3));
assert.equal("Buzz", fizzBuzzRep(25));

var answer = getFizzBuzzRange(0, 5);
var expected = ["FizzBuzz", "1", "2", "Fizz", "4", "Buzz"];

for (var i = 0; i < answer.length; i += 1) {
  assert.equal(expected[i], answer[i]);
}

console.log("All Tests passed");
