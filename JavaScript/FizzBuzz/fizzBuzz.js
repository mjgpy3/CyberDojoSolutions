fizzBuzzRep = function (number) {
  var result = "";

  if (number % 3 == 0) {
    result += "Fizz";
  }
  if (number % 5 == 0) {
    result += "Buzz";
  }

  return result || number.toString();
};

getFizzBuzzRange = function (low, high) {
  var result = [],
      i;

  for (i = 0; i <= high-low; i += 1) {
    result.push(fizzBuzzRep(i+low));
  }

  return result;
};
