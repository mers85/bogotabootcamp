def change(amount, currency_to_change, currency_to_buy)
  result = false
  if currency_to_change == 'cop' && currency_to_buy == 'usd'
     result =  amount / 2800
  elsif currency_to_change == 'usd' && currency_to_buy == 'cop'
     result = amount * 2800
  end
  result
end

puts "Money converter"

print "Add amount to convert:"
amount = gets.chomp.to_f

puts "Choose the currency change:"
puts "write 'cop' for colombian pesos and 'usd' for dollars"
currency_to_change = gets.chomp.downcase

puts "Currency to buy:"
puts "write 'cop' for colombian pesos and 'usd' for dollars"
currency_to_buy = gets.chomp.downcase

puts "You want to convert: #{amount} from: #{currency_to_change} to: #{currency_to_buy} "

result = change(amount, currency_to_change, currency_to_buy)

if result
  puts "obtendrías #{result.round(2)}"
else
  puts "cambio no valido"
end
