print "Type a number: "
num = gets.to_i

begin
  result = 100 / num
rescue
  puts "Inlavid number!"
  exit
end

puts "100/#{num} is: #{result}"

print "And what is your age? "
age = gets.to_i

class InvalidAgeException < Exception
end

def verify_age(age)
  unless age >= 18
    raise InvalidAgeException, "You have to be older than 18 to play this game."
  end
end

begin
  verify_age(age)
rescue InvalidAgeException => e
  puts "Thrown exception => #{e}"
end
