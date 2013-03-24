require 'set'

def lengths_in_list list
  lengths = []

  list.each do |number|
    current_length = number.to_s.length
    if not lengths.include? current_length
      lengths << current_length
    end
  end

  lengths
end

def chop_list_max_size_strings list, size
  numbers = []

  list.each do |number|
    current_number = number.to_s
    numbers << current_number[0...size]
  end

  numbers
end

def numbers_are_consistent_at_size numbers, size
  sized_numbers = chop_list_max_size_strings numbers, size

  set_of_sized_numbers = Set.new sized_numbers
  set_of_sized_numbers.count == sized_numbers.count
end

def number_list_is_consistent numbers
  lengths = lengths_in_list numbers

  lengths.each do |size|
    return false if not numbers_are_consistent_at_size numbers, size
  end
  return true
end
