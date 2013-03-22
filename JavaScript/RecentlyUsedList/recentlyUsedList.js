recentlyUsedList = function() {
    var pub = {},
    list = [];

    pub.size = function() {
        return list.length;
    }

    pub.getMostRecent = function() {
        return list[list.length-1];
    }

    pub.getLeastRecent = function() {
        return list[0];
    }

    pub.add = function(item) {
        var itemIndex = list.indexOf(item);

        if (itemIndex == -1) {
            list[list.length] = item;
        }
        else {
            var temp = list[list.length-1];
            list[list.length-1] = list[itemIndex];
            list[itemIndex] = temp;
        }
    }

    pub.lookup = function(index) {
      return[list.length - index];
    }

    return pub;
}
