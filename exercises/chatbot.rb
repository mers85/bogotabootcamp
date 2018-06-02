puts "saluton"

puts "Write your name"

name = gets.chomp

puts "which is your age?"

age = gets.chomp

puts "Hi, #{name} who is #{age} years old!"


puts "You will be 75 years old in #{75 - age.to_i} years!"

puts "It is #{name.downcase == "jeff"} that your name is Jeff."

puts "Good bye!"
