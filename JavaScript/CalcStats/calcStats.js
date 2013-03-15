calcStats = {
    valueByCondition: function (nums, condition) {
        "use strict";
        var min = nums[0], i;

        for (i = 1; i < nums.length; i += 1) {
            if (condition(nums[i], min)) {
                min = nums[i];
            }
        }
        return min;
    },

    minValue: function (nums) {
        "use strict";
        return this.valueByCondition(nums, function (a, b) {return a < b; });
    },
    maxValue: function (nums) {
        "use strict";
        return this.valueByCondition(nums, function (a, b) {return a > b; });
    },
    numberOfElements: function (nums) {
        "use strict";
        return nums.length;
    },
    average: function (nums) {
        "use strict";
        var sum = 0, i;
        for (i = 0; i < nums.length; i += 1) {
            sum += nums[i];
        }
        return sum / this.numberOfElements(nums);
    }
};
