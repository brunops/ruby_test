puts "Hello, son"
byes_in_a_row = 0
while byes_in_a_row != 3
  input = gets.chomp
	if input == "BYE"
    byes_in_a_row += 1
  else
    byes_in_a_row = 0
  end

  if input != input.upcase
    puts "HUH?! SPEAK UP SONNY!"
  else
    puts "NO, NOT SINCE #{1930 + rand(21)}!"
  end
end
