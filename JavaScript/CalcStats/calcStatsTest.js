require('./calcStats.js')

assert = require('assert')

testList = [6, 9, 15, -2, 92, 11];

assert.equal( calcStats.minValue(testList), -2 );
assert.equal( calcStats.maxValue(testList), 92);
assert.equal( calcStats.numberOfElements(testList), 6);
assert.equal( calcStats.average(testList), 21.833333333333332);

console.log('All tests passed');
