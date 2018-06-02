guess_number = rand(1..10)

guessed = false
times = 1
while guessed == false
  puts 'Guess a number, give me a number from 1 to 10'
  number = gets.chomp
  if number.to_i == guess_number
    puts "Congratulations! You needed #{times} times."
    guessed = true
  elsif number.to_i > guess_number
    puts 'the number is lower'
  elsif number.to_i < guess_number
    puts 'the number is greater'
  end
  times += 1

end
