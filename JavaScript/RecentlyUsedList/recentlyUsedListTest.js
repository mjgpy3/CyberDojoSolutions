require('./recentlyUsedList.js');

assert = require('assert');

var testList = new recentlyUsedList()

assert.equal(0, testList.size());

testList.add(1);
testList.add(2);
testList.add(3);
testList.add(4);

assert.equal(4, testList.getMostRecent());
assert.equal(1, testList.getLeastRecent());

assert.equal(4, testList.lookup(0));
assert.equal(2, testList.lookup(2));

testList.add(1);

assert.equal(4, testList.size());
assert.equal(1, testList.getMostRecent());

console.log("All tests passed");
