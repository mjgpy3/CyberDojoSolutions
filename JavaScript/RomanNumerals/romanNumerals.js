simpleNumberToNumeral = {
  0: "",
  1: "I", 
  10:"X",
  100: "C",
  1000: "M",
  2: "II",
  20: "XX",
  200: "CC",
  2000: "MM",
  3: "III",
  30: "XXX",
  300: "CCC",
  3000: "MMM",
  4: "IV",
  40: "XL",
  400: "CD",
  4000: "MMMM",
  5: "V",
  50: "L",
  500: "D",
  6: "VI",
  60: "LX",
  600: "DC",
  7: "VII",
  70: "LXX",
  700: "DCC",
  8: "VIII",
  80: "LXXX",
  800: "DCCC",
  9: "IX",
  90: "XC",
  900: "CM" 
};

numberToNumeral = function(number) {
  var result = "",
      current,
      powerOfTen = 1;

  while (number != 0) {
    current = number % Math.pow(10, powerOfTen);
    result = simpleNumberToNumeral[current] + result;
    number = number - current;
    powerOfTen += 1;
  }
  return result;
};
