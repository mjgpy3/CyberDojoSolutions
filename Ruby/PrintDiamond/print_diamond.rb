def distance_between_letters(a, b)
  (a.upcase.ord - b.upcase.ord).abs
end

def get_diamond_loop_indicies(start, fin)
  d = distance_between_letters(fin, start)
  (d.downto(-d)).map {|x| x.abs}
end

def get_space_padding(n)
  padding = ''
  (1.upto(n)).each {padding += ' '}
  padding
end

def get_letter_from_offset(letter, offset)
  (letter.upcase.ord+offset).chr
end

def puts_diamond_from_letter(letter)
  d = distance_between_letters('A', letter)

  get_diamond_loop_indicies('A', letter).each do |i|
    current_letter = get_letter_from_offset('A', d-i)
    line = get_space_padding(i) + current_letter
    ending = d != i ? get_space_padding((d-i-1)*2+1)+current_letter : ""
    puts line + ending
  end
end
