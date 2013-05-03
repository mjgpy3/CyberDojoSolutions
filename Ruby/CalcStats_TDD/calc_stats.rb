class CalcStats
  def self.min_value values
    values.min
  end

  def self.max_value values
    values.max
  end

  def self.number_of_elements values
    values.size
  end

  def self.average values
    values.inject(:+).to_f / CalcStats.number_of_elements(values)
  end
end
