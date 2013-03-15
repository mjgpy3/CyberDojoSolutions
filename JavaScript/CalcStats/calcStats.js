calcStats = {
  valueByCondition: function(nums, condition) {
    var min = nums[0];

    for (var i = 1; i < nums.length; i++) {
      if (condition(nums[i],min)) {
        min = nums[i];
      }
    }
    return min;
  },

  minValue: function(nums) {
    return this.valueByCondition(nums, (function(a, b) {return a < b}));
  },
  maxValue: function(nums) {
    return this.valueByCondition(nums, (function(a,b) {return a > b}));
  },
  numberOfElements: function(nums) {
    return nums.length;
  },
  average: function(nums) {
    sum = 0;
    for (var i = 0; i < nums.length; i++) {
      sum += nums[i];
    }
    return sum/this.numberOfElements(nums);
  }
};
