puts "Enter as many words as you want"
words = []
while (input = gets.chomp) != ""
	words << input
end
puts
puts "End of input, typed words: " + words.to_s
puts
puts "Sorted array: " + words.sort.to_s