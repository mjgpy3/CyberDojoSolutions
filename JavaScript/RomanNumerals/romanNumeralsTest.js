require('./romanNumerals.js');

assert = require('assert');

assert.equal(simpleNumberToNumeral[9], "IX");
assert.equal(simpleNumberToNumeral[4000], "MMMM");

assert.equal(numberToNumeral(1990), "MCMXC");
assert.equal(numberToNumeral(2008), "MMVIII");
assert.equal(numberToNumeral(99), "XCIX");
assert.equal(numberToNumeral(47), "XLVII");

console.log('All tests passed');
