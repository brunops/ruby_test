months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
]
filename = 'birthdays.txt'
f = File.open(filename, 'r')

birthdays = {}
f.each_line do |line|
  slices = line.chomp.split(/,\s*/)

  name = slices[0]
  month_and_day = slices[1].split(/\s+/)
  year = slices[2]


  birthdays[name.downcase] = Time.local(year, months.index(month_and_day[0]) + 1, month_and_day[1])
end

puts "Birthdays:"
name = ''
while name != 'q'
  puts
  print "Type the name of the person to know more about his/her next birthday (q to quit): "
  input = gets.chomp
  name = input.downcase

  if name == 'q'
    break
  elsif birthdays[name].nil?
    puts "'#{name}' not found"
  else
    is_birthday_this_year = Time.local(Time.now.year, birthdays[name].month, birthdays[name].day) > Time.now
    
    birthday_year = if is_birthday_this_year
      Time.now.year
    else 
      Time.now.year + 1
    end
      
    next_birthday = Time.local(birthday_year, birthdays[name].month, birthdays[name].day)
    years_old = birthday_year - birthdays[name].year

    puts "#{input} next birthday is #{next_birthday}, of #{years_old} years"
    puts
  end
end



