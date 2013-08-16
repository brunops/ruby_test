def is_leap_year?(year)
	year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

puts "Starting year?"
start_year = gets.chomp
puts "Ending year?"
end_year = gets.chomp
puts "Leap years between #{start_year} and #{end_year} are: "
((start_year.to_i)..(end_year.to_i)).to_a.each do |i|
	if is_leap_year?(i)
		puts "#{i} is leap year"
	end
end

