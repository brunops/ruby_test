def old_roman_numeral(number)
  number = number.to_i
  roman_numbers = [
    ['I', 1],
    ['V', 5],
    ['X', 10],
    ['L', 50],
    ['C', 100],
    ['D', 500],
    ['M', 1000]
  ]

  roman_numeral = ''
  roman_numbers.reverse.each do |current_number|
    current_number_times = number / current_number[1]
    if current_number_times > 0
      roman_numeral += current_number[0] * current_number_times
    end
    number %= current_number[1]
  end

  roman_numeral
end

puts old_roman_numeral(gets.chomp)