def fizzbuzz?(number)
  if number % 3 == 0 && number % 5 == 0
    puts "fizzbuzz"
  elsif number % 5 == 0
    puts "buzz"
  elsif number % 3 == 0
    puts "fizz"
  else
    puts number
  end
end

20.times do |number|
  number += 1
  fizzbuzz?(number)
end
