require('./calcStats.js')

assert = require('assert')

testList = [6, 9, 15, -2, 92, 11];

assert.equal( answerMin(testList), -2 );
assert.equal( answerMax(testList), 92);
assert.equal( answerNElements(testList), 6);
assert.equal( answerAverage(testList), 21.833333333333332);

console.log('All tests passed');
