class FizzBuzz
  def self.representation number
    result = ""
    result += "Fizz" if number % 3 == 0
    result += "Buzz" if number % 5 == 0
    result = number.to_s if result == ""

    result
  end

  def self.range beg, fin
    beg.upto(fin).collect {|x| self.representation x}
  end
end
